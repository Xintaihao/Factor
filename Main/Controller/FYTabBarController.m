//
//  FYTabBarController.m
//  Factor
//
//  Created by ludapeng on 07/03/2017.
//  Copyright © 2017 ludapeng. All rights reserved.
//

#import "FYTabBarController.h"
#import "FYNavigationController.h"
#import "FProfileViewController.h"
#import "FFViewController.h"

@interface FYTabBarController ()

@end

@implementation FYTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    FFViewController *ffviewc = [[FFViewController alloc] init];
    [self addChildVc:ffviewc title:@"首页" iamge:@"tabbar_home" selectedImage:@"tabbar_home_selected"];
    
    FProfileViewController *fpviewc = [[FProfileViewController alloc] init];
    [self addChildVc:fpviewc title:@"我" iamge:@"tabbar_profile" selectedImage:@"tabbar_profile_selected"];
    
}


-(void)addChildVc:(UIViewController *)childVc title:(NSString *)title iamge:(NSString *)image selectedImage:(NSString *)selectedImage{
    
    childVc.title = title;
    
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor yellowColor];
    
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateNormal];
    
    FYNavigationController *nav = [[FYNavigationController alloc] initWithRootViewController:childVc];
    
    [self addChildViewController:nav];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
    - (void)didReceiveMemoryWarning {
        [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
    }

@end
