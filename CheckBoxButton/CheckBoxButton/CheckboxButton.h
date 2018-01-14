//
//  CheckboxButton.h
//  CheckBoxButton
//
//  Created by InterTeleco on 1/9/18.
//  Copyright © 2018 InterTeleco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CheckboxButton : UIButton
@property (nonatomic) BOOL isChecked;
@property (nonatomic,strong)IBInspectable UIColor *borderColor;
@property (nonatomic,strong)IBInspectable UIColor *checkedColor;
@property (nonatomic,strong) UIColor *arrowColor;
@end
