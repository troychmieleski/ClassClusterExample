//
//  AccountSession.h
//  ClassClusterExample
//
//  Created by Troy Chmieleski on 1/28/14.
//  Copyright (c) 2014 Troy Chmieleski. All rights reserved.
//

#import <Foundation/Foundation.h>

// account
#import "Account.h"

/**
 *  Account session class cluster example
 */
@interface AccountSession : NSObject

- (id)initWithAccount:(id <Account>)account;
- (void)printDescription;

@end
