//
//  ViewController.m
//  TaxCalculator
//
//  Created by Tony Dakhoul on 5/8/15.
//  Copyright (c) 2015 Tony Dakhoul. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *priceTextField;

@property (weak, nonatomic) IBOutlet UIButton *calculateButton;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property double caTax, chiTax, nyTax;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;

    self.

    self.calculateButton.layer.cornerRadius = 5;
    self.calculateButton.clipsToBounds = YES;


    self.resultLabel.layer.cornerRadius = 5;
    self.resultLabel.clipsToBounds = YES;
    self.resultLabel.textColor = [UIColor blackColor];
    self.resultLabel.text = @"Result";
    
}

- (IBAction)onCalculateButtonTapped:(id)sender {

    double result;

    if (self.priceTextField.text.length > 0) {

        NSString *userValue = self.priceTextField.text;
        NSNumberFormatter *f = [[NSNumberFormatter alloc] init];

        if ([f numberFromString:userValue]) {

            NSLog(@"This is a number");


            double userValueDouble = self.priceTextField.text.doubleValue;

            if (self.segmentedControl.selectedSegmentIndex == 0) {

                result = userValueDouble + (self.caTax * userValueDouble);

                NSLog(@"%g", result);

                self.resultLabel.text = [NSString stringWithFormat:@"%g", result];

            } else if (self.segmentedControl.selectedSegmentIndex == 1) {

                result = userValueDouble + (self.chiTax * userValueDouble);

                NSLog(@"%g", result);

                self.resultLabel.text = [NSString stringWithFormat:@"%g", result];

            } else if (self.segmentedControl.selectedSegmentIndex == 2) {

                result = userValueDouble + (self.nyTax * userValueDouble);

                NSLog(@"%g", result);

                self.resultLabel.text = [NSString stringWithFormat:@"%g", result];
            }
        }
    }
}

@end
