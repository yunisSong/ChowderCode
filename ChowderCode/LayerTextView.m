//
//  LayerTextView.m
//  ChowderCode
//
//  Created by Yunis on 15/12/18.
//  Copyright © 2015年 yunis. All rights reserved.
//

#import "LayerTextView.h"

@implementation LayerTextView

- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetBlendMode(ctx, kCGBlendModeCopy);
    CGContextSetRGBFillColor(ctx, 1.0, 1.0, 1.0, 0.0);
    CGContextSetLineWidth(ctx, 10.f);
    CGContextSetCharacterSpacing(ctx, 10.f);
    CGContextSetTextDrawingMode(ctx, kCGTextFill);
    NSString *s = @"哈哈🐲";
    [s drawAtPoint:CGPointMake(0, 50) withAttributes:@{NSFontAttributeName :[UIFont systemFontOfSize:40],NSForegroundColorAttributeName:[UIColor clearColor]}];
    
    

}
@end
