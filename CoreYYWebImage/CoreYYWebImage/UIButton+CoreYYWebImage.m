//
//  UIButton+CoreYYWebImage.m
//  CoreYYWebImage
//
//  Created by 冯成林 on 15/12/17.
//  Copyright © 2015年 冯成林. All rights reserved.
//

#import "UIButton+CoreYYWebImage.h"
#import "UIButton+YYWebImage.h"

@implementation UIButton (CoreYYWebImage)

-(void)imageWithUrl:(NSString *)url placeHolderImage:(UIImage *)image state:(UIControlState)state{
    
    NSURL *urlObj = [NSURL URLWithString:url];
    
    [self yy_setImageWithURL:urlObj forState:state placeholder:image options:YYWebImageOptionProgressiveBlur | YYWebImageOptionSetImageWithFadeAnimation | YYWebImageOptionProgressive | YYWebImageOptionAllowBackgroundTask completion:nil];
    
}

@end
