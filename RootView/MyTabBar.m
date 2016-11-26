//
//  MyTabBar.m
//  RootView
//
//  Created by MyMac on 2016/11/25.
//  Copyright © 2016年 hengshuimofangkeji. All rights reserved.
//

#import "MyTabBar.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
@interface MyTabBar ()

@end

@implementation MyTabBar

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    FirstViewController * first = [[FirstViewController alloc]init];
    SecondViewController * second = [[SecondViewController alloc]init];
    
    
    NSArray * titleArray = @[@"Fir",@"Sec"];
    NSArray * vc = @[first, second];
    NSMutableArray * viewControllers = [NSMutableArray arrayWithCapacity:0];
    for (int i = 0; i<vc.count; i++) {
        UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:vc[i]];
        nav.title = titleArray[i];
        [viewControllers addObject:nav];
    }
    self.viewControllers = viewControllers;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
