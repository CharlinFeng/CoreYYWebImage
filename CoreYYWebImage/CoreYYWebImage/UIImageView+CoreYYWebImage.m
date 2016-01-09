//
//  UIImageView+CoreYYWebImage.m
//  CoreYYWebImage
//
//  Created by 冯成林 on 15/12/4.
//  Copyright © 2015年 冯成林. All rights reserved.
//

#import "UIImageView+CoreYYWebImage.h"
#import "UIImageView+YYWebImage.h"


@implementation UIImageView (CoreYYWebImage)

-(void)imageWithUrl:(NSString *)url placeHolderImage:(UIImage *)image{
    
    NSURL *urlObj = [NSURL URLWithString:url];
    
    [self yy_setImageWithURL:urlObj placeholder:image options:YYWebImageOptionProgressiveBlur | YYWebImageOptionSetImageWithFadeAnimation | YYWebImageOptionProgressive | YYWebImageOptionAllowBackgroundTask  completion:nil];
}


-(void)imageWithUrl:(NSString *)url placeHolderImage:(UIImage *)image compeleteBlock:(void(^)(UIImage *image))compeleteBlock{

    NSURL *urlObj = [NSURL URLWithString:url];

    [self yy_setImageWithURL:urlObj placeholder:image options:YYWebImageOptionProgressiveBlur | YYWebImageOptionSetImageWithFadeAnimation | YYWebImageOptionProgressive | YYWebImageOptionAllowBackgroundTask completion:^(UIImage *image, NSURL *url, YYWebImageFromType from, YYWebImageStage stage, NSError *error) {
        
        if(compeleteBlock != nil) compeleteBlock(image);
    }];
}

@end
