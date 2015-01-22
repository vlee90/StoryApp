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

@interface MainViewController () <UITextViewDelegate>

@property (weak, nonatomic) MainViewModel* mainViewModel;
@property (weak, nonatomic) IBOutlet UITextView* previousTextView;
@property (weak, nonatomic) IBOutlet UITextView* currentTextView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem* submitButton;
@property CGPoint originalCenter;
@property BOOL isTextViewBeingEditted;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.currentTextView.delegate = self;
    self.originalCenter = self.view.center;
//    RAC(self.submitButton, title) =
    self.mainViewModel = [[MainViewModel alloc] init];
}

-(void)textViewDidBeginEditing:(UITextView *)textView {
    NSLog(@"DID begin editing");
    self.view.center = CGPointMake(self.view.center.x, self.view.center.y - 200);
}

- (void)textViewDidEndEditing:(UITextView *)textView {
    NSLog(@"ended editting");
    self.view.center = self.originalCenter;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if (![touches isKindOfClass:[UITextView class]]) {
        [self.view endEditing:true];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
