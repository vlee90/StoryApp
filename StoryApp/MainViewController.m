//
//  MainViewController.m
//  StoryApp
//
//  Created by Vincent Lee on 1/20/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import "MainViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "MainViewModel.h"

@interface MainViewController () <UITextViewDelegate, UITextFieldDelegate>

#pragma mark - IBOutlets:
@property (weak, nonatomic) IBOutlet UITextView* previousTextView;
@property (weak, nonatomic) IBOutlet UITextView* currentTextView;
@property (weak, nonatomic) IBOutlet UITextField* titleTextField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem* submitButton;

#pragma mark - Properties:
@property CGPoint originalCenter;
@property (strong, nonatomic) MainViewModel* mainViewModel;


@end

@implementation MainViewController

#pragma mark - ViewDidLoad:
- (void)viewDidLoad {
    [super viewDidLoad];
    self.currentTextView.delegate = self;
    self.titleTextField.delegate = self;
    self.originalCenter = self.view.center;
}

#pragma mark - TextField Methods:
-(void)textFieldDidBeginEditing:(UITextField *)textField {
    self.submitButton.enabled = false;
}

-(void)textFieldDidEndEditing:(UITextField *)textField {
    self.submitButton.enabled = true;
}

#pragma mark - TextView Methods
-(void)textViewDidBeginEditing:(UITextView *)textView {
    self.view.center = CGPointMake(self.view.center.x, self.view.center.y - 200);
    self.submitButton.enabled = false;
}

- (void)textViewDidEndEditing:(UITextView *)textView {
    self.view.center = self.originalCenter;
    self.submitButton.enabled = true;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if (![touches isKindOfClass:[UITextView class]]) {
        [self.view endEditing:true];
    }
}

#pragma mark - Misc:

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
