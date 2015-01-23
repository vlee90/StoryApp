//
//  LoginViewController.m
//  StoryApp
//
//  Created by Vincent Lee on 1/21/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField* usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField* passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton* loginButton;
@property (weak, nonatomic) IBOutlet UIButton* createAccountButton;
@property (strong, nonatomic) LoginViewModel* loginViewModel;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loginViewModel = [[LoginViewModel alloc] init];
    
    RACSignal* usernameValidSignal =
        [[self.usernameTextField rac_textSignal]
         map:^id(NSString* text) {
             return @([self.loginViewModel isUsernameValid:text]);
         }];
    RAC(self.usernameTextField, backgroundColor) =
        [usernameValidSignal
         map:^id(NSNumber* usernameValid) {
             return [usernameValid boolValue] ? [UIColor greenColor] : [UIColor whiteColor];
         }];
    RACSignal* passwordValidSignal =
        [[self.passwordTextField rac_textSignal]
        map:^id(NSString* text) {
            return @([self.loginViewModel isPasswordValid:text]);
        }];
    RAC(self.passwordTextField, backgroundColor) =
        [passwordValidSignal
         map:^id(NSNumber* passwordValid) {
             return [passwordValid boolValue] ? [UIColor greenColor] : [UIColor whiteColor];
         }];
    
    RACSignal* validFormSignal =
        [RACSignal combineLatest:@[usernameValidSignal, passwordValidSignal]
            reduce:^id(NSNumber* usernameValid, NSNumber* passwordValid){
                return @([usernameValid boolValue] && [passwordValid boolValue]);
            }];
    RAC(self.loginButton, enabled) =
        [validFormSignal
        map:^id(NSNumber* formValid) {
            return [formValid boolValue] ? @(true) : @(false);
        }];
    RAC(self.createAccountButton, enabled) =
        [validFormSignal
         map:^id(NSNumber* formValid) {
             return [formValid boolValue] ? @(true) : @(false);
         }];
}

-(IBAction)loginButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

-(IBAction)createAccountButtonPressed:(id)sender {
    [self.loginViewModel createUserWithName:self.usernameTextField.text withPassword:self.passwordTextField.text];
    [self dismissViewControllerAnimated:true completion:nil];
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
