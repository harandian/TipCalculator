//
//  TextFieldViewController.m
//  TipCalCulator
//
//  Created by Hirad on 2017-08-04.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import "TextFieldViewController.h"

@interface TextFieldViewController () <UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *enterBillAmount;
@property (weak, nonatomic) IBOutlet UILabel *calculatedFullAmount;
@property (weak, nonatomic) IBOutlet UILabel *TipAmount;
@property (nonatomic) float billAmount;
@property (nonatomic) float tipPercent;
@property (weak, nonatomic) IBOutlet UIButton *setTipAt15Perc;
@property (weak, nonatomic) IBOutlet UIButton *setTipAt17Perc;

@end

@implementation TextFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    
    
    
    self.enterBillAmount.delegate = self;
    
    self.enterBillAmount.backgroundColor = [UIColor grayColor];
    
    [self.enterBillAmount becomeFirstResponder];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (BOOL)textFieldShouldReturn:(UITextField *)enterBillAmount {

    [self.enterBillAmount resignFirstResponder];
    
//    
//    self.billAmount = [self.enterBillAmount.text floatValue] * self.tipPercent;
//    
//    self.TipAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];
//    
//    self.billAmount = ([self.enterBillAmount.text floatValue] * self.tipPercent) + [self.enterBillAmount.text integerValue];
//    ;
//    
//    NSLog(@"%.2f",self.billAmount);
//    
//    self.calculatedFullAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];//self.billAmount;
//    
    return YES;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)setTo15Perc:(id)sender {
    
    self.tipPercent = 0.15;
    
    
    self.billAmount = [self.enterBillAmount.text floatValue] * self.tipPercent;
    
    self.TipAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];
    
    self.billAmount = ([self.enterBillAmount.text floatValue] * self.tipPercent) + [self.enterBillAmount.text integerValue];
    ;
    
    NSLog(@"%.2f",self.billAmount);
    
    self.calculatedFullAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];//self.billAmount;
    


}

- (IBAction)setTo17Perc:(id)sender {
    
    self.tipPercent = 0.17;
    
    
    self.billAmount = [self.enterBillAmount.text floatValue] * self.tipPercent;
    
    self.TipAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];
    
    self.billAmount = ([self.enterBillAmount.text floatValue] * self.tipPercent) + [self.enterBillAmount.text integerValue];
    ;
    
    NSLog(@"%.2f",self.billAmount);
    
    self.calculatedFullAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];//self.billAmount;
    


}

- (IBAction)setTo25perc:(id)sender {
    
    self.tipPercent = 0.20;

    
    self.billAmount = [self.enterBillAmount.text floatValue] * self.tipPercent;
    
    self.TipAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];
    
    self.billAmount = ([self.enterBillAmount.text floatValue] * self.tipPercent) + [self.enterBillAmount.text integerValue];
    ;
    
    NSLog(@"%.2f",self.billAmount);
    
    self.calculatedFullAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];//self.billAmount;
    
}


@end
