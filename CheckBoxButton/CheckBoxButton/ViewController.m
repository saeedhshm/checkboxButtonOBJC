//
//  ViewController.m
//  CheckBoxButton
//
//  Created by InterTeleco on 1/9/18.
//  Copyright © 2018 InterTeleco. All rights reserved.
//

#import "ViewController.h"
#import "CheckboxButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)checkAction:(CheckboxButton *)sender {
    NSLog(@"the button is checked %i",sender.isChecked);
}


@end
