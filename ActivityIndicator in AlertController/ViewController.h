//
//  ViewController.h
//  ActivityIndicator in AlertController
//
//  Created by Nagam Pawan on 10/6/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>

@property (strong, nonatomic) IBOutlet UIWebView *myWeb;
- (IBAction)enter:(id)sender;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *indicator;

@end

