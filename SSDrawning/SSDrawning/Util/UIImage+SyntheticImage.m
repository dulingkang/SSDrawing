//
//  UIImage+SyntheticImage.m
//  UIImageCetegory
//
//  Created by 崔峰 on 15/3/23.
//  Copyright (c) 2015年 SmarterEye. All rights reserved.
//

#import "UIImage+SyntheticImage.h"

@implementation UIImage (SyntheticImage)

+ (UIImage *) imageWithView:(UIView *)view withSize:(CGSize)viewSize
{
//    UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.opaque, [[UIScreen mainScreen] scale]);
//  
//    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
//    UIImage * img = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    return img;

    UIGraphicsBeginImageContextWithOptions(viewSize, YES, [[UIScreen mainScreen] scale]);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *screenshot = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
//    return screenshot;

    CGRect upRect = CGRectMake(0, 0, viewSize.width * [[UIScreen mainScreen] scale], viewSize.height * [[UIScreen mainScreen] scale]);
    CGImageRef imageRefUp = CGImageCreateWithImageInRect([screenshot CGImage], upRect);
    UIImage * img = [UIImage imageWithCGImage:imageRefUp];
    return img;
}

@end
