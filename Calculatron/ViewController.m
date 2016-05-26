//
//  ViewController.m
//  Calculatron
//
//  Created by Christopher Benavides on 5/26/16.
//  Copyright © 2016 Christopher Benavides. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textFieldLabel;
@property (weak, nonatomic) IBOutlet UITextField *operandOne;
@property (weak, nonatomic) IBOutlet UITextField *operandtwo;
@property (weak, nonatomic) IBOutlet UILabel *operationLabel;

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
- (IBAction)onOperationTapped:(UIButton *)sender {
    
    double op1 = self.operandOne.text.doubleValue;
    double op2 = self.operandtwo.text.doubleValue;
    
    if ([self.operationLabel.text isEqualToString:@"+"]) {
        self.title = [NSString stringWithFormat:@"%2.f", op1 + op2];
    }
    else if ([self.operationLabel.text isEqualToString:@"-"]) {
        self.title = [NSString stringWithFormat:@"%2.f", op1 - op2];
        
    }
    else if ([self.operationLabel.text isEqualToString:@"*"]) {
        self.title = [NSString stringWithFormat:@"%2.f", op1 * op2];
    }
    else {
        self.title = [NSString stringWithFormat:@"%2.f", op1 / op2];
        
    }
}




@end
