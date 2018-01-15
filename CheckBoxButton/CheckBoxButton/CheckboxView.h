//
//  CheckboxView.h
//  CheckBoxButton
//
//  Created by InterTeleco on 1/15/18.
//  Copyright © 2018 InterTeleco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CheckboxView : UIView
@property (nonatomic,strong)IBInspectable UIColor *arrowColor;
@property (nonatomic,strong)IBInspectable UIColor *borderColor;
@property (nonatomic,strong)IBInspectable UIColor *bgCheckedColor;
@property (nonatomic,strong)IBInspectable UIColor *bgUncheckedColor;
@property (nonatomic) BOOL isChecked;
@end
