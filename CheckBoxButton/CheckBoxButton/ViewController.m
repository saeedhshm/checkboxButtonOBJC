//
//  ViewController.m
//  CheckBoxButton
//
//  Created by InterTeleco on 1/9/18.
//  Copyright © 2018 InterTeleco. All rights reserved.
//

#import "ViewController.h"

#import "CheckboxView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet CheckboxView *checkBox;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)checkTheCheck:(id)sender {
    
    NSLog(@"chekbox is %i",self.checkBox.isChecked);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
