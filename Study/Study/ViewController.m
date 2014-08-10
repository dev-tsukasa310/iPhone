//
//  ViewController.m
//  Study
//
//  Created by 齋野 令 on 2014/08/10.
//  Copyright (c) 2014年 齋野令. All rights reserved.
//

#import "ViewController.h"

// @interface ViewController ()

// @end

@implementation ViewController

@synthesize label = label;
@synthesize button = button;
@synthesize webView = webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configureView
{
    NSLog(@"configureView start!");
    NSInteger test = 777;
    NSLog(@"%d ボーナス確定！", test);
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(10.0, 20.0, 300.0, 40.0)];
    label.text = @"Hello world!";
    label.textAlignment = UITextAlignmentCenter;
    [self.view addSubview:label];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(40.0, 80.0, 240.0, 40.0);
    [button setTitle:@"Touch!" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    webView = [[UIWebView alloc] initWithFrame:CGRectMake(10.0, 160.0, 300.0, 280.0)];
    webView.scalesPageToFit = YES;
    webView.delegate = self;
    [self.view addSubview:webView];
    
    // 変数
    NSString *string1 = @"LOW TON";
    NSInteger count = 7;
    CGFloat rating = 5.1;
    // 文字列は%@、数値は%d、少数は%fで代入する
    NSString *string2 = [NSString stringWithFormat:@"今日は%@が%d回出ました！", string1, count];
    NSString *string3 = [NSString stringWithFormat:@"今日のレーティングは%fです！", rating];
    NSLog(@"%@", string2);
    NSLog(@"%@", string3);
}

- (void)action
{
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.yahoo.co.jp"]]];
}

@end
