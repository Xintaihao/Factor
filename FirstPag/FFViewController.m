//
//  FFViewController.m
//  Factor
//
//  Created by ludapeng on 22/03/2017.
//  Copyright © 2017 ludapeng. All rights reserved.
//

#import "FFViewController.h"
#import "FSCViewController.h"
#import "FSCViewController.h"

@interface FFViewController ()

@end

@implementation FFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(pop) image:@"Scan Barcode" highImage:@"Scan Barcode"];
}

-(void)pop{

    NSLog(@"jjkll");

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
