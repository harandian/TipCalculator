//
//  TextFieldViewController.m
//  TipCalCulator
//
//  Created by Hirad on 2017-08-04.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import "TextFieldViewController.h"

@interface TextFieldViewController ()


@property (weak, nonatomic) IBOutlet UITextField *enterBillAmount;

@end

@implementation TextFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.enterBillAmount.backgroundColor = [UIColor grayColor];
    
    [self.enterBillAmount becomeFirstResponder];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
