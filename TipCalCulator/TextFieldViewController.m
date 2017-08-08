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
@property (weak, nonatomic) IBOutlet UIButton *setTopTo20Perc;
@property (weak, nonatomic) IBOutlet UITextField *enterTipAmount;
@property (nonatomic) BOOL displayCustomAmount;
@property (weak, nonatomic) IBOutlet UILabel *BillPerPerson;
@property (weak, nonatomic) IBOutlet UILabel *numberOfPeople;
@property (strong, nonatomic) NSNumber *numberOfppl;

@end

@implementation TextFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.numberOfppl = [[NSNumber alloc] initWithFloat: 1.0];
    self.enterBillAmount.delegate = self;
    self.enterTipAmount.delegate = self;
    
    self.enterBillAmount.backgroundColor = [UIColor grayColor];
    
    [self.enterBillAmount becomeFirstResponder];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    
    if (textField.tag == 1) {
        
        [self.enterBillAmount resignFirstResponder];
        
        [self setTo0Perc:self];
        
    } else {
                
        [self.enterTipAmount resignFirstResponder];
        
        self.displayCustomAmount = YES;
        
        self.tipPercent = [self.enterTipAmount.text floatValue]/100;
        
        self.billAmount = [self.enterBillAmount.text floatValue] * self.tipPercent;
        
        self.TipAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];
        
        self.billAmount = ([self.enterBillAmount.text floatValue] * self.tipPercent) + [self.enterBillAmount.text integerValue];
        
        
        NSLog(@"%.2f",self.billAmount);
        
        self.calculatedFullAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];//self.billAmount;
        [self splitTheBill];

    }
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



#pragma mark - Setting default payment with no Tip

- (void)setTo0Perc:(id)sender {
    
    self.tipPercent = 0;
    
    self.billAmount = [self.enterBillAmount.text floatValue] * self.tipPercent;
    
    self.TipAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];
    
    self.billAmount = ([self.enterBillAmount.text floatValue] * self.tipPercent) + [self.enterBillAmount.text integerValue];
    ;
    
    NSLog(@"%.2f",self.billAmount);
    
    self.calculatedFullAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];//self.billAmount;
    
    [self splitTheBill];

}

- (IBAction)setTo15Perc:(id)sender {
    
    self.tipPercent = 0.15;
    
    
    self.billAmount = [self.enterBillAmount.text floatValue] * self.tipPercent;
    
    self.TipAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];
    
    self.billAmount = ([self.enterBillAmount.text floatValue] * self.tipPercent) + [self.enterBillAmount.text integerValue];
    ;
    
    NSLog(@"%.2f",self.billAmount);
    
    self.calculatedFullAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];//self.billAmount;
    
    [self splitTheBill];

    
}

- (IBAction)setTo17Perc:(id)sender {
    
    self.tipPercent = 0.17;
    
    
    self.billAmount = [self.enterBillAmount.text floatValue] * self.tipPercent;
    
    self.TipAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];
    
    self.billAmount = ([self.enterBillAmount.text floatValue] * self.tipPercent) + [self.enterBillAmount.text integerValue];
    ;
    
    NSLog(@"%.2f",self.billAmount);
    
    self.calculatedFullAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];//self.billAmount;
    
    [self splitTheBill];

    
}

- (IBAction)setTo25perc:(id)sender {
    
    self.tipPercent = 0.20;
    
    
    self.billAmount = [self.enterBillAmount.text floatValue] * self.tipPercent;
    
    self.TipAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];
    
    self.billAmount = ([self.enterBillAmount.text floatValue] * self.tipPercent) + [self.enterBillAmount.text integerValue];
    ;
    
    NSLog(@"%.2f",self.billAmount);
    
    self.calculatedFullAmount.text = [NSString stringWithFormat:@"%.2f",self.billAmount];//self.billAmount;
    
    [self splitTheBill];
    
}

- (IBAction)BillSplitter:(UIStepper*)sender {
    
    self.numberOfPeople.text = [NSString stringWithFormat:@"%.0f",sender.value];
    self.numberOfppl = [NSNumber numberWithDouble: sender.value];
    
    
    float billPP = self.billAmount/[self.numberOfppl floatValue];;
    
    self.BillPerPerson.text = [NSString stringWithFormat:@"%.2f", billPP];
    
    
}

- (void) splitTheBill {
    
    float billPP = self.billAmount/[self.numberOfppl floatValue];;
    
    self.BillPerPerson.text = [NSString stringWithFormat:@"%.2f", billPP];

}

@end
