//
//  UIImage+Color.m
//  Foodies
//
//  Created by Dobango on 3/7/13.
//  Copyright (c) 2013 Hackintology. All rights reserved.
//

#import "UIImage+Color.h"



@implementation UIImage (Color)

+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0, 0, 1, 1);
    // Create a 1 by 1 pixel context
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [color setFill];
    UIRectFill(rect);   // Fill it with your color
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)imageWithMusicGradient:(UIColor*)startColor withEndColor:(UIColor*)endColor{
    UIGraphicsBeginImageContext(CGSizeMake(320, 44));
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIGraphicsPushContext(context);
    CGColorSpaceRef rgb = CGColorSpaceCreateDeviceRGB();
    /*CGFloat colors[] =
    {
        78.0f, 117.0f, 153.0f, 1.0f,
        0.0f, 0.0f, 0.0f, 1.0f,
    };*/
    

    CGPoint start = CGPointMake(0, 0);
    
    CGPoint end = CGPointMake(320, 44);
    
    //CGFloat locations[] = { 0.0, 1.0 };
    //CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    NSArray *colors = [NSArray arrayWithObjects:startColor, endColor, nil];
    
    //CGGradientRef _gradientRef = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef) colors, locations);
    
    CGGradientRef _gradientRef = CGGradientCreateWithColorComponents(rgb, (CFArrayRef)colors, NULL, sizeof(colors) / (sizeof(colors[0]) * 4));
    
    CGContextDrawLinearGradient(context, _gradientRef, start, end, kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    
    
    /* Now we can remove the graphic context from the stack, retrieve the freshly created UIImage and of course, release the Core Graphics image context we created at first. */
    UIGraphicsPopContext();
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    
    return image;
}




@end


