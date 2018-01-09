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
    UIImage * img;
}

-(void)awakeFromNib{
    [super awakeFromNib];
    self.isChecked = YES;
//
    [self addTarget:self action:@selector(checkAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.layer setBorderColor:UIColor.lightGrayColor.CGColor];
    [self.layer setCornerRadius:4];
    [self.layer setBorderWidth:2];
    img = [UIImage imageNamed:@"ic_check"];
    UIImage *image = [img imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    [self setImage:image forState:UIControlStateNormal];
    self.tintColor = [UIColor whiteColor];
    [self setBackgroundColor:UIColor.whiteColor];
}

-(void)checkAction:(UIButton *)sender{
    self.isChecked = !self.isChecked;
    if(self.isChecked){
      [self setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
        [self.layer setBorderWidth:2];
        [self setBackgroundColor:UIColor.whiteColor];
    }else{
        [self setBackgroundColor:UIColor.blueColor];
        [self setImage:img forState:UIControlStateNormal];
        [self.layer setBorderWidth:0];
        
    }
    
    
}
@end
