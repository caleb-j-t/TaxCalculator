//
//  ViewController.m
//  TaxCalculator
//
//  Created by Caleb Talbot on 5/13/16.
//  Copyright © 2016 Caleb Talbot. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UIButton *calculateButtonTapped;
@property double sfTax;
@property double chiTax;
@property double nyTax;
@property double resultValue;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sfTax = .0875;
    self.chiTax = .1025;
    self.nyTax = .08875;
    }
- (IBAction)onCalculateButtonTappedAction:(id)sender {
    double price = [self.priceTextField.text doubleValue];
    NSUInteger selectedSegment = self.segmentedControl.selectedSegmentIndex;
    if (selectedSegment == 0) {
        self.resultValue = price * self.sfTax;
            }
    else if (selectedSegment == 1) {
        self.resultValue = price * self.chiTax;
    } else if (selectedSegment ==2) {
        self.resultValue = price * self.nyTax;
    }
    
    [self.resultLabel setText:[NSString stringWithFormat: @"$%.2f", self.resultValue]];
}
@end
