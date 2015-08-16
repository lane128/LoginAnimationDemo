//
//  LoginViewController.m
//  LoginAnimationDemo
//
//  Created by Lane on 8/16/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
//elements connected
@property (weak, nonatomic) IBOutlet UIImageView *bubble1;
@property (weak, nonatomic) IBOutlet UIImageView *bubble2;
@property (weak, nonatomic) IBOutlet UIImageView *bubble3;
@property (weak, nonatomic) IBOutlet UIImageView *bubble4;
@property (weak, nonatomic) IBOutlet UIImageView *bubble5;
@property (weak, nonatomic) IBOutlet UIImageView *bubble6;
@property (weak, nonatomic) IBOutlet UIImageView *bubble7;
@property (weak, nonatomic) IBOutlet UIImageView *bubble8;
@property (weak, nonatomic) IBOutlet UIImageView *dot;
@property (weak, nonatomic) IBOutlet UIImageView *logo;
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@end

@implementation LoginViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //set bubble scale to 0(hide)
    self.bubble1.transform=CGAffineTransformMakeScale(0, 0);
    self.bubble2.transform=CGAffineTransformMakeScale(0, 0);
    self.bubble3.transform=CGAffineTransformMakeScale(0, 0);
    self.bubble4.transform=CGAffineTransformMakeScale(0, 0);
    self.bubble5.transform=CGAffineTransformMakeScale(0, 0);
    self.bubble6.transform=CGAffineTransformMakeScale(0, 0);
    self.bubble7.transform=CGAffineTransformMakeScale(0, 0);
    self.bubble8.transform=CGAffineTransformMakeScale(0, 0);
    
    //move the dot and logo out view
    self.logo.center=CGPointMake(self.logo.center.x-self.view.bounds.size.width, self.logo.center.y);
    self.dot.center=CGPointMake(self.dot.center.x-self.view.bounds.size.width, self.dot.center.y);
    
    //move the text fields and button out view
    self.userName.center=CGPointMake(self.userName.center.x-self.view.bounds.size.width, self.userName.center.y);
    self.password.center=CGPointMake(self.password.center.x-self.view.bounds.size.width, self.password.center.y);
    self.loginButton.center=CGPointMake(self.loginButton.center.x-self.view.bounds.size.width, self.loginButton.center.y);
    
    //set padding for text field in its own bg
    UIView *userNamePaddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 20)];
    self.userName.leftView=userNamePaddingView;
    self.userName.leftViewMode=UITextFieldViewModeAlways;
    
    UIView *passwordPaddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 20)];
    self.password.leftView=passwordPaddingView;
    self.password.leftViewMode=UITextFieldViewModeAlways;
    
    //set text field icon in text field as a subView so they can move as one block
    UIImageView *userNameImageView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"username_img.png"]];
    CGRect userNameFrame=CGRectZero;
    userNameFrame.size=CGSizeMake(userNameImageView.frame.size.width, userNameImageView.frame.size.height);
    userNameFrame.origin=CGPointMake(13, 10);
    [userNameImageView setFrame:userNameFrame];
    [self.userName addSubview:userNameImageView];
    
    UIImageView *passwordImageView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"password_img.png"]];
    CGRect passwordFrame=CGRectZero;
    passwordFrame.size=CGSizeMake(passwordImageView.frame.size.width, passwordImageView.frame.size.height);
    passwordFrame.origin=CGPointMake(12, 9);
    [passwordImageView setFrame:passwordFrame];
    [self.password addSubview:passwordImageView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    //set four group to display the bubbles
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.3 initialSpringVelocity:1 options:UIViewAnimationOptionTransitionNone animations:^{
        self.bubble1.transform=CGAffineTransformMakeScale(1, 1);
        self.bubble2.transform=CGAffineTransformMakeScale(1, 1);
    } completion:nil];
    
    [UIView animateWithDuration:0.5 delay:0.3 usingSpringWithDamping:0.3 initialSpringVelocity:1 options:UIViewAnimationOptionTransitionNone animations:^{
        self.bubble3.transform=CGAffineTransformMakeScale(1, 1);
        self.bubble4.transform=CGAffineTransformMakeScale(1, 1);
    } completion:nil];
    
    [UIView animateWithDuration:0.5 delay:0.6 usingSpringWithDamping:0.3 initialSpringVelocity:1 options:UIViewAnimationOptionTransitionNone animations:^{
        self.bubble5.transform=CGAffineTransformMakeScale(1, 1);
        self.bubble6.transform=CGAffineTransformMakeScale(1, 1);
    } completion:nil];
    
    [UIView animateWithDuration:0.5 delay:0.9 usingSpringWithDamping:0.3 initialSpringVelocity:1 options:UIViewAnimationOptionTransitionNone animations:^{
        self.bubble7.transform=CGAffineTransformMakeScale(1, 1);
        self.bubble8.transform=CGAffineTransformMakeScale(1, 1);
    } completion:nil];
    
    
    //set the log animation of moving to the view
    [UIView animateWithDuration:2 delay:0.9 usingSpringWithDamping:0.7 initialSpringVelocity:1 options:UIViewAnimationOptionTransitionNone animations:^{
        self.logo.center=CGPointMake(self.logo.center.x+self.view.bounds.size.width, self.logo.center.y);
    } completion:nil];
    
    [UIView animateWithDuration:3 delay:0.9 usingSpringWithDamping:0.3 initialSpringVelocity:2 options:UIViewAnimationOptionTransitionNone animations:^{
        self.dot.center=CGPointMake(self.dot.center.x+self.view.bounds.size.width, self.dot.center.y);
    } completion:nil];
    
    //set the text fields and button animation of moving to the view
    [UIView animateWithDuration:1 delay:0.9 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.userName.center=CGPointMake(self.userName.center.x+self.view.bounds.size.width, self.userName.center.y);
    } completion:nil];
    
    [UIView animateWithDuration:1 delay:1 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.password.center=CGPointMake(self.password.center.x+self.view.bounds.size.width, self.password.center.y);
    } completion:nil];
    
    [UIView animateWithDuration:1 delay:1.1 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.loginButton.center=CGPointMake(self.loginButton.center.x+self.view.bounds.size.width, self.loginButton.center.y);
    } completion:nil];
}

- (IBAction)loginTapped:(id)sender {
    //alloc and init a spinner
    UIActivityIndicatorView *spinner=[[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    //set color for spinner
    [spinner setColor:[UIColor grayColor]];
    //set frame for spinner
    CGRect spinnerFrame=CGRectZero;
    spinnerFrame.size=CGSizeMake(spinner.frame.size.width, spinner.frame.size.height);
    spinnerFrame.origin=CGPointMake(13, 15);
    [spinner setFrame:spinnerFrame];
    //add spinner in to login button
    [self.loginButton addSubview:spinner];
    //add a animation of shaking
    self.loginButton.center=CGPointMake(self.loginButton.center.x-20, self.loginButton.center.y);
    [UIView animateWithDuration:2 delay:0 usingSpringWithDamping:0.2 initialSpringVelocity:0 options:UIViewAnimationOptionTransitionNone animations:^{
        self.loginButton.center=CGPointMake(self.loginButton.center.x+20, self.loginButton.center.y);
    } completion:nil];
    
    
    //start the spinner
    [spinner startAnimating];
}

/*.
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
