//
//  ViewController.h
//  miniBrowser
//
//  Created by miran on 14/07/2019.
//  Copyright © 2019 miran. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate, UIWebViewDelegate>

@property (strong, nonatomic) IBOutlet UISegmentedControl *bookmargSegmentedControll;
@property (strong, nonatomic) IBOutlet UITextField *urlTextField;
@property (strong, nonatomic) IBOutlet UIWebView *mainWebView;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityView;
- (IBAction)bookmarkAction:(id)sender;
- (IBAction)backAction:(id)sender;
- (IBAction)fowardAction:(id)sender;
- (IBAction)stopAction:(id)sender;
- (IBAction)reflashAction:(id)sender;


@end

