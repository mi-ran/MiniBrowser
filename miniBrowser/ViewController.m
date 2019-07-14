//
//  ViewController.m
//  miniBrowser
//
//  Created by miran on 14/07/2019.
//  Copyright © 2019 miran. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mainWebView, urlTextField, bookmargSegmentedControll;
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *urlString = @"http://www.facebook.com";
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    urlTextField.text = urlString;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSString* urlString = urlTextField.text;
    
    if (![urlString hasPrefix:@"http://"]) {
        urlString = [[NSString alloc]initWithFormat:@"http://%@", urlString];
    }
    
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)bookmarkAction:(id)sender {
    NSString* bookmarkURL = [bookmargSegmentedControll titleForSegmentAtIndex:bookmargSegmentedControll.selectedSegmentIndex];
    NSString* urlString = [[NSString alloc]initWithFormat:@"http://www.%@.com", bookmarkURL];
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    urlTextField.text = urlString;
}

- (IBAction)backAction:(id)sender {
    [mainWebView goBack];
}

- (IBAction)fowardAction:(id)sender {
    [mainWebView goForward];
}

- (IBAction)stopAction:(id)sender {
    [mainWebView stopLoading];
}

- (IBAction)reflashAction:(id)sender {
    [mainWebView reload];
}

-(void)webViewDidStartLoad:(UIWebView *)webView {
    [_activityView startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView {
    [_activityView stopAnimating];
}
@end
