//
//  UIBarButtonItem+UIBarButtonItem.m
//  Factor
//
//  Created by ludapeng on 29/03/2017.
//  Copyright © 2017 ludapeng. All rights reserved.
//

#import "UIBarButtonItem+UIBarButtonItem.h"

@implementation UIBarButtonItem (UIBarButtonItem)

+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    //设置照片
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateNormal];
    //设置尺寸
    btn.size = btn.currentBackgroundImage.size;
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
    
}

@end
