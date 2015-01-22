//
//  LoginViewController.m
//  StoryApp
//
//  Created by Vincent Lee on 1/21/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginViewModel.h"

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
}

-(IBAction)loginButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

-(IBAction)createAccountButtonPressed:(id)sender {
    
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