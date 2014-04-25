//
//  ViewDIsplay.m
//  Calculator
//
//  Created by Agnė Peluritytė on 4/25/14.
//  Copyright (c) 2014 Agnė Peluritytė. All rights reserved.
//

#import "ViewDIsplay.h"

@implementation ViewDIsplay

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    
    NSString *text = @"0";
    CGFloat x, y, w, h;
    
    x = self.bounds.origin.x;
    y = self.bounds.origin.y + 30;
    w = self.bounds.size.width - 15;
    h  = self.bounds.size.height;
    
    UIFont *font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:62];
    UIColor *color = [ UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.alignment = NSTextAlignmentRight;
    NSDictionary *attributes = @{NSForegroundColorAttributeName:color,
                                 NSFontAttributeName:font,
                                 NSParagraphStyleAttributeName:paragraph};
    NSAttributedString *textFormatted = [[NSAttributedString alloc] initWithString:text attributes:attributes];
    
    
    
    
    CGRect frame = CGRectMake(x, y, w, h);
    [textFormatted drawInRect:frame];
    
    
}


@end
