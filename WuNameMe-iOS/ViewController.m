//
//  ViewController.m
//  WuNameMe-iOS
//
//  Created by Niraj Pant on 12/19/14.
//  Copyright (c) 2014 Niraj Pant. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

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
    [self downloadTask];
}

- (void)reset {
    _firstName.text = @"";
    _lastName.text = @"";
}

- (void)downloadTask {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://coinmarketcap.northpole.ro/api/all.json" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
            NSLog(@"JSON: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

@end
