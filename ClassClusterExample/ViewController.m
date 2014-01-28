//
//  ViewController.m
//  ClassClusterExample
//
//  Created by Troy Chmieleski on 1/28/14.
//  Copyright (c) 2014 Troy Chmieleski. All rights reserved.
//

#import "ViewController.h"

// class cluster example view
#import "ClassClusterExampleView.h"

// facebook account
#import "FacebookAccount.h"

// twitter account
#import "TwitterAccount.h"

// account session class cluster
#import "AccountSession.h"

#define CLASS_CLUSTER_EXAMPLE_LABEL_TEXT @"Class cluster example"

@interface ViewController ()

@property (nonatomic, strong) NSArray *accounts;
@property (nonatomic, strong) ClassClusterExampleView *classClusterExampleView;

@end

@implementation ViewController

#pragma mark - View controller

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	// accounts
	FacebookAccount *facebookAccount = [[FacebookAccount alloc] init];
	TwitterAccount *twitterAccount = [[TwitterAccount alloc] init];
	
	_accounts = @[facebookAccount, twitterAccount];
	
	// account session class cluster
	for (id <Account> account in _accounts) {
		AccountSession *accountSession = [[AccountSession alloc] initWithAccount:account];
		[accountSession printDescription];
	}
	
	// note that print description cannot be used directly on an account session instance
	// when uncommented, the following will throw the exception: -[AccountSession printDescription]: unrecognized selector
	//AccountSession *accountSession = [[AccountSession alloc] init];
	//[accountSession printDescription];
	
	// class cluster example view
	[self.view addSubview:self.classClusterExampleView];
	
	// main label
	[self.classClusterExampleView setMainLabelLetterpressText:CLASS_CLUSTER_EXAMPLE_LABEL_TEXT];
}

#pragma mark - Class cluster example view

- (ClassClusterExampleView *)classClusterExampleView {
	if (!_classClusterExampleView) {
		_classClusterExampleView = [[ClassClusterExampleView alloc] initWithFrame:self.view.frame];
		[_classClusterExampleView setBackgroundColor:[UIColor whiteColor]];
	}
	
	return _classClusterExampleView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
