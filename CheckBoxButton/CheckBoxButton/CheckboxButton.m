//
//  CheckboxButton.m
//  CheckBoxButton
//
//  Created by InterTeleco on 1/9/18.
//  Copyright © 2018 InterTeleco. All rights reserved.
//

#import "CheckboxButton.h"

@implementation CheckboxButton
{
    CGContextRef contextX;
    CGContextRef contextY;
}


- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    [self setCheckSymbol:self.arrowColor];
    
}
-(void)awakeFromNib{
    [super awakeFromNib];
    self.isChecked = YES;
//
    [self.layer setBorderColor:UIColor.blueColor.CGColor];
    [self addTarget:self action:@selector(checkAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.layer setBorderColor:self.borderColor.CGColor];
    [self.layer setCornerRadius:4];
    [self.layer setBorderWidth:2];
    [self.layer setMasksToBounds:true];
    [self setClipsToBounds:true];

    [self setBackgroundColor:UIColor.whiteColor];
}

-(void)checkAction:(UIButton *)sender{
    self.isChecked = !self.isChecked;
    if(self.isChecked){

        [self setCheckSymbol:UIColor.clearColor];
        [self.layer setBorderWidth:2];
        [self setBackgroundColor:UIColor.whiteColor];
    }else{
        [self setBackgroundColor:self.checkedColor];

        [self setCheckSymbol:UIColor.whiteColor];
        [self.layer setBorderWidth:0];
        
    }
    
}

-(void)setCheckSymbol:(UIColor*) checkColor{
    contextX = UIGraphicsGetCurrentContext();
    contextY = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(contextX, checkColor.CGColor);
    
    // Draw them with a 2.0 stroke width so they are a bit more visible.
    CGContextSetLineWidth(contextX, 2.0f);
    
    CGContextMoveToPoint(contextX, 8.0f, 12.0f); //start at this point
    CGFloat centerX = (self.bounds.size.width / 2) -2;
    CGFloat centerY = (self.bounds.size.height / 2) + 5;
    CGContextAddLineToPoint(contextX, centerX  , centerY); //draw to this point
    
    
    CGContextSetStrokeColorWithColor(contextY, checkColor.CGColor);
    
    // Draw them with a 2.0 stroke width so they are a bit more visible.
    CGContextSetLineWidth(contextY, 2.0f);
    
    CGContextMoveToPoint(contextY, centerX, centerY); //start at this point
    
    CGContextAddLineToPoint(contextY, self.bounds.size.width-5  , 8); //draw to this point
    
    // and now draw the Path!
    CGContextStrokePath(contextX);
    CGContextStrokePath(contextY);
}
@end
