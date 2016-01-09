//
//  UIButton+CoreYYWebImage.h
//  CoreYYWebImage
//
//  Created by 冯成林 on 15/12/17.
//  Copyright © 2015年 冯成林. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (CoreYYWebImage)

-(void)imageWithUrl:(NSString *)url placeHolderImage:(UIImage *)image state:(UIControlState)state;

-(void)imageWithUrl:(NSString *)url placeHolderImage:(UIImage *)image state:(UIControlState)state compeleteBlock:(void(^)(UIImage *image))compeleteBlock;



@end
