//
//  AccountSession.m
//  ClassClusterExample
//
//  Created by Troy Chmieleski on 1/28/14.
//  Copyright (c) 2014 Troy Chmieleski. All rights reserved.
//

#import "AccountSession.h"

// facebook account
#import "FacebookAccount.h"

// twitter account
#import "TwitterAccount.h"

// facebook session
#import "FacebookSession.h"

#import "TwitterSession.h"

// twitter session

@implementation AccountSession

- (id)init {
	return nil;
}

- (id)initWithAccount:(id <Account>)account {
	self = nil;
	
	if ([account isKindOfClass:[FacebookAccount class]]) {
		self = [[FacebookSession alloc] init];
	}
	
	else if ([account isKindOfClass:[TwitterAccount class]]) {
		self = [[TwitterSession alloc] init];
	}
	
	return self;
}

- (void)printDescription {
	[self doesNotRecognizeSelector: _cmd];
}

@end
