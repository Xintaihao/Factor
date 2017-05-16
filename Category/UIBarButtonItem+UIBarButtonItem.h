//
//  UIBarButtonItem+UIBarButtonItem.h
//  Factor
//
//  Created by ludapeng on 29/03/2017.
//  Copyright © 2017 ludapeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (UIBarButtonItem)


+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;

@end
