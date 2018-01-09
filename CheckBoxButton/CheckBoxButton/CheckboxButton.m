//
//  CheckboxButton.m
//  CheckBoxButton
//
//  Created by InterTeleco on 1/9/18.
//  Copyright © 2018 InterTeleco. All rights reserved.
//

#import "CheckboxButton.h"

@implementation CheckboxButton

-(void)awakeFromNib{
    [super awakeFromNib];
    self.isChecked = YES;
    [self setImage:[UIImage imageNamed:@"unchecked"] forState:UIControlStateNormal];
    [self addTarget:self action:@selector(checkAction:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)checkAction:(UIButton *)sender{
    self.isChecked = !self.isChecked;
    NSString *imgName = self.isChecked ? @"unchecked":@"checked";

    [self setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
    
}
@end
