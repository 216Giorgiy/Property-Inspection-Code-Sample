﻿//
//  BaseClient.m
//  office365-base-sdk
//
//  Copyright (c) 2014 Microsoft Open Technologies, Inc.
//  All rights reserved.
//

#import "ExchangeBaseClient.h"

@implementation ExchangeBaseClient

- (id)initWithUrl:(NSString *)url credentials:(Credentials *)credentials
{
    self.Credential = credentials;
    self.Url = url;
    return self;
}

- (NSMutableArray *)parseData:(NSData *)data{
    return [NSMutableArray alloc];
}

@end