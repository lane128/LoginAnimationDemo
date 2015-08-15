//
//  LoginViewController.m
//  LoginAnimationDemo
//
//  Created by Lane on 8/16/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
//imageView connected
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
    
    
    //set the log animation move to the view
    [UIView animateWithDuration:2 delay:0.9 usingSpringWithDamping:0.7 initialSpringVelocity:1 options:UIViewAnimationOptionTransitionNone animations:^{
        self.logo.center=CGPointMake(self.logo.center.x+self.view.bounds.size.width, self.logo.center.y);
    } completion:nil];
    
    [UIView animateWithDuration:3 delay:0.9 usingSpringWithDamping:0.3 initialSpringVelocity:2 options:UIViewAnimationOptionTransitionNone animations:^{
        self.dot.center=CGPointMake(self.dot.center.x+self.view.bounds.size.width, self.dot.center.y);
    } completion:nil];
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
