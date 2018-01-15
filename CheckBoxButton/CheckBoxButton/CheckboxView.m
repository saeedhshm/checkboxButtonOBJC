//
//  CheckboxView.m
//  CheckBoxButton
//
//  Created by InterTeleco on 1/15/18.
//  Copyright © 2018 InterTeleco. All rights reserved.
//

#import "CheckboxView.h"

@interface ArrowView:UIView
@property (nonatomic,strong) UIColor *arrowColor;
@end

@implementation CheckboxView

{
    UIButton *button;
    ArrowView *arr;
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
//        [self setBackgroundColor:[UIColor clearColor]];
        self.borderColor = [UIColor lightGrayColor];
        self.arrowColor = [UIColor whiteColor];
        self.bgColor = [UIColor blueColor];
        
    }
    return self;
}


-(void)awakeFromNib{
    [super awakeFromNib];
    
//    [self setBackgroundColor:[UIColor redColor]];
    CGRect rect = CGRectMake(3, 3, self.bounds.size.width - 6, self.bounds.size.height - 6);
    arr = [[ArrowView alloc] initWithFrame:rect];
    arr.arrowColor = self.arrowColor;
   
    
    [self.layer setBorderColor:self.borderColor.CGColor];
    [self.layer setCornerRadius:4];
    [self.layer setBorderWidth:2];
    [self.layer setMasksToBounds:true];
    [self setClipsToBounds:true];
    [arr setBackgroundColor:self.bgColor];
    button = [[UIButton alloc] initWithFrame:self.bounds];
    [button addTarget:self action:@selector(addCheckAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
}

-(void)addCheckAction:(UIButton *)sender{
    self.isChecked = !self.isChecked;
    NSLog(@"button pressed %i",self.isChecked);
    if(self.isChecked){
        [self insertSubview:arr atIndex:0];
    }else{
        [arr removeFromSuperview];
    }
    
}

@end

@implementation ArrowView
{
    CGContextRef contextX;
    CGContextRef contextY;
}
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    [self setCheckSymbol:self.arrowColor];
    [self.layer setCornerRadius:4];
    [self.layer setBorderWidth:0];
    [self.layer setMasksToBounds:true];
    [self setClipsToBounds:true];
    
}

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setBackgroundColor:[UIColor clearColor]];
        
        
    }
    return self;
}
-(void)setCheckSymbol:(UIColor*) checkColor{
    contextX = UIGraphicsGetCurrentContext();
    contextY = UIGraphicsGetCurrentContext();
    
    CGFloat centerX = (self.bounds.size.width / 2) -2;
    CGFloat centerY = (self.bounds.size.height / 2) + 5;
    
    CGContextSetStrokeColorWithColor(contextX, checkColor.CGColor);
    
    // Draw them with a 2.0 stroke width so they are a bit more visible.
    CGContextSetLineWidth(contextX, 2.0f);
    
    CGContextMoveToPoint(contextX, 6.0f, 10.0f); //start at this point

    CGContextAddLineToPoint(contextX, centerX  , centerY); //draw to this point
    
    
    CGContextSetStrokeColorWithColor(contextY, checkColor.CGColor);
    
    // Draw them with a 2.0 stroke width so they are a bit more visible.
    CGContextSetLineWidth(contextY, 2.0f);
    
    CGContextMoveToPoint(contextY, centerX, centerY); //start at this point
    
    CGContextAddLineToPoint(contextY, self.bounds.size.width-2  , 8); //draw to this point
    
    // and now draw the Path!
    CGContextStrokePath(contextX);
    CGContextStrokePath(contextY);
}


@end
