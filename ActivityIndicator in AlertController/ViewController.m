//
//  ViewController.m
//  ActivityIndicator in AlertController
//
//  Created by Nagam Pawan on 10/6/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = false;
    self.myWeb.delegate = self;
     [self.myWeb loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.apple.com"]]];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Please wait \n Loading..." message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    ViewController *vc = [[ViewController alloc]init];
    [alert setValue:vc forKey:@"contentViewController"];
    [vc.view addSubview:indicator];
    [vc.view addConstraint:[NSLayoutConstraint
                                  constraintWithItem: indicator
                                  attribute:NSLayoutAttributeCenterX
                                  relatedBy:NSLayoutRelationEqual
                                  toItem:vc.view
                                  attribute:NSLayoutAttributeCenterX
                                  multiplier:1.0f
                                  constant:0.0f]];
    
    
    
    [vc.view addConstraint:[NSLayoutConstraint
                                  constraintWithItem: indicator
                                  attribute:NSLayoutAttributeCenterY
                                  relatedBy:NSLayoutRelationEqual
                                  toItem:vc.view
                                  attribute:NSLayoutAttributeCenterY
                                  multiplier:1.0f
                                  constant:0.0f]];
    [indicator startAnimating];
    [self presentViewController:alert animated:NO completion:nil];
    


   }

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)enter:(id)sender {
  
}
@end
