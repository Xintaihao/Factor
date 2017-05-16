//
//  FSCScanViewStyle.h
//  Factor
//
//  Created by ludapeng on 16/05/2017.
//  Copyright © 2017 ludapeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FSCScanViewStyle : NSObject

//扫面区域动画效果
typedef enum FSCScanViewAnimationStyle
{
    FSCScanViewAnimationStyle_LineMove,
    FSCScanViewAnimationStyle_NetGrid,
    FSCScanViewAnimationStyle_LineStill,
    FSCScanViewAnimationStyle_None
}FSCScanViewAnimationStyle;

//扫描区域四个角类型
typedef enum FSCScanViewPhotoframeAngleStyle
{
    FSCScanViewPhotoframeAngleStyle_Inner,//内嵌
    FSCScanViewPhotoframeAngleStyle_Outer,//外嵌
    FSCScanViewPhotoframeAngleStyle_On,//在矩形四个角上

}FSCScanViewPhotoframeAngleStyel;

//扫面区域四个角类型
@property (nonatomic, assign) enum FSCScanViewPhotoframeAngleStyle photoframeAngleStyle;

//扫描线
@property (nonatomic, assign) CGFloat photoframeLineW;

//矩形宽
@property (nonatomic, assign) CGFloat photoframeAngleW;

//矩形高
@property (nonatomic, assign) CGFloat photoframeAngleH;

//
@property (nonatomic, assign) BOOL isNeedShowRetangle;

//矩形区域上下偏移
@property (nonatomic, assign) CGFloat centerUpOffset;

//矩形区域左右偏移
@property (nonatomic, assign) CGFloat xScanRetangleOffset;

#pragma mark - 扫描动画效果

//线条或网格
@property (nonatomic, assign) FSCScanViewAnimationStyle animationStyle;

//效果图片
@property (nonatomic, strong) UIImage *animationImage;

#pragma mark - 非识别区颜色，默认（0，0，0， 0.5）
@property (nonatomic, assign) CGFloat alpa_notReconginitonArea;

@end
