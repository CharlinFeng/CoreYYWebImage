//
//  ViewController.m
//  CoreYYWebImage
//
//  Created by 冯成林 on 15/12/4.
//  Copyright © 2015年 冯成林. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+CoreYYWebImage.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageV;

@property (weak, nonatomic) IBOutlet UIImageView *imageV2;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *url = @"http://img.netbian.com/file/20131220/cd39faa3b64d51fb8c63838e2bc9ce01.jpg";
    
    [self.imageV imageWithUrl:url placeHolderImage:nil compeleteBlock:^(UIImage *image) {
        
        
        NSLog(@"完成");
        
        self.imageV2.image = image;
        
    }];
    
}





@end
