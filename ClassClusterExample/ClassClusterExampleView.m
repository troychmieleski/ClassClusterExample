//
//  ClassClusterExampleView.m
//  ClassClusterExample
//
//  Created by Troy Chmieleski on 1/28/14.
//  Copyright (c) 2014 Troy Chmieleski. All rights reserved.
//

#import "ClassClusterExampleView.h"

#define CLASS_CLUSTER_EXAMPLE_VIEW_MAIN_LABEL_FONT_SIZE 24.0f

@implementation ClassClusterExampleView {
	NSAttributedString *_mainLabelAttrString;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
	
    if (self) {
		[self addSubview:self.mainLabel];
    }
	
    return self;
}

#pragma mark - Main label

- (UILabel *)mainLabel {
	if (!_mainLabel) {
		_mainLabel = [[UILabel alloc] initWithFrame:CGRectZero];
	}
	
	return _mainLabel;
}

#pragma mark - Main label attr string

- (void)setMainLabelLetterpressText:(NSString *)text {
	UIFont *font = [UIFont boldSystemFontOfSize:CLASS_CLUSTER_EXAMPLE_VIEW_MAIN_LABEL_FONT_SIZE];
	
	UIColor *textColor = [UIColor colorWithWhite:0.9 alpha:1.0];
	
	NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
	[paragraphStyle setAlignment:NSTextAlignmentCenter];
	
	NSDictionary *attrs = @{NSForegroundColorAttributeName : textColor,
							NSFontAttributeName : font,
							NSTextEffectAttributeName : NSTextEffectLetterpressStyle,
							NSParagraphStyleAttributeName: paragraphStyle};
	
	_mainLabelAttrString = [[NSAttributedString alloc]
									  initWithString:text
									  attributes:attrs];
	
	[_mainLabel setAttributedText:_mainLabelAttrString];
}

- (void)layoutSubviews {
	// main label
	CGRect textRect = [_mainLabelAttrString boundingRectWithSize:self.mainLabel.bounds.size options:0 context:nil];
	
	CGRect integralTextRect = CGRectIntegral(textRect);
	
	[_mainLabel setFrame:CGRectMake((self.frame.size.width - integralTextRect.size.width)/2, (self.bounds.size.height - integralTextRect.size.height)/2, integralTextRect.size.width, integralTextRect.size.height)];
}


@end
