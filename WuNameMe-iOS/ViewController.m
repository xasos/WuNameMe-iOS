//
//  ViewController.m
//  WuNameMe-iOS
//
//  Created by Niraj Pant on 12/19/14.
//  Copyright (c) 2014 Niraj Pant. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *youAre;
@property (weak, nonatomic) IBOutlet UILabel *personName;
@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (strong, nonatomic) IBOutlet UITextField *lastName;

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [_youAre setHidden:YES];
    [_personName setHidden:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)generateName {
    NSString *first = _firstName.text;
    NSString *last = _lastName.text;
    NSLog(@"%@", first);
    NSLog(@"%@", last);
    
    _youAre.text = @"";
    _personName.text = @"";
    [_youAre setHidden:NO];
    [_personName setHidden:NO];
    [self reset];
}

- (void)reset {
    _firstName.text = @"";
    _lastName.text = @"";
}

- (IBAction)tweetName {
    NSString *finalName = @"test";
    NSString *tweet = @"intent/tweet?text=From+this+moment+forward,+I+will+be+known+as+";
    NSString *tweet2 = @".%0A-+And+your+Wu-Tang+name?%0A+http://appsto.re/2l3KA%0A+via+@WuNameMe";

    
    NSString *finalUrl = [NSString stringWithFormat:@"%@%@%@", tweet, finalName, tweet2];

    NSString *strurl = [NSString stringWithFormat:@"http://www.twitter.com/%@",finalUrl];
//    NSString *stuff = [NSString stringWithFormat:@"twitter://%@",finalUrl];
    NSString *stuff = [NSString stringWithFormat:@"twitter://post?message=hello%20world"];
    
    NSURL *twitterURL = [NSURL URLWithString:stuff];
    if ([[UIApplication sharedApplication] canOpenURL:twitterURL])
        [[UIApplication sharedApplication] openURL:twitterURL];
    else
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:strurl]];
    
    
}
@end
