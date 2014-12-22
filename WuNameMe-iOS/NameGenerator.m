//
//  NameGenerator.m
//  WuNameMe-iOS
//
//  Created by Niraj Pant on 12/20/14.
//  Copyright (c) 2014 Niraj Pant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>
#import "JSONModel.h"

@interface NamesModel : JSONModel

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;

@end

@implementation NamesModel

- (void)downloadTask {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"coinmarketcap.northpole.ro/api/all.json" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

@end