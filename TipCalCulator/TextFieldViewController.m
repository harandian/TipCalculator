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

@end

@implementation TextFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.enterBillAmount.delegate = self;
    
    self.enterBillAmount.backgroundColor = [UIColor grayColor];
    
    [self.enterBillAmount becomeFirstResponder];
    
    //[self.enterBillAmount textfi]

//    self.billAmount = [self.enterBillAmount.text integerValue];
//    
//    NSLog(@"%ld",(long)self.billAmount);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (BOOL)textFieldShouldReturn:(UITextField *)enterBillAmount {

    [self.enterBillAmount resignFirstResponder];
    
    
    self.billAmount = [self.enterBillAmount.text floatValue] * 0.15;
    
    self.TipAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];
    
    self.billAmount = ([self.enterBillAmount.text floatValue] * 0.15) + [self.enterBillAmount.text integerValue];
    ;
    
    NSLog(@"%.2f",self.billAmount);
    
    self.calculatedFullAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];//self.billAmount;
    
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



@end
