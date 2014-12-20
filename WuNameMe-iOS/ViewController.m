//
//  ViewController.m
//  WuNameMe-iOS
//
//  Created by Niraj  on 12/19/14.
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
}

- (void)reset {
    
}

@end
