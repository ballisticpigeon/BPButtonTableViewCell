//
//  BPButtonTableViewCell.m
//  Brewtool
//
//  Created by Jon Olson on 9/24/09.
//  Copyright 2009 Ballistic Pigeon, LLC. All rights reserved.
//

#import "BPButtonTableViewCell.h"


@implementation BPButtonTableViewCell

- (id)init {
    if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil]) {
		// Prevent ugly blueness
		self.selectionStyle = UITableViewCellSelectionStyleNone;
		
		// Set text properties
		self.textLabel.textAlignment = UITextAlignmentCenter;
		self.textLabel.textColor = [UIColor whiteColor];
		self.textLabel.font = [UIFont boldSystemFontOfSize:20.0];
		self.textLabel.shadowOffset = CGSizeMake(0, -1);
		self.textLabel.shadowColor = [UIColor colorWithWhite:0 alpha:0.5];
		
		// Set button background image (which is, for now, 
		UIImage *image = [[UIImage imageNamed:@"redButton.png"] stretchableImageWithLeftCapWidth:6.0 topCapHeight:0.0];
		self.backgroundColor = [UIColor clearColor];
		self.backgroundView = [[UIImageView alloc] initWithImage:image];
    }
	
    return self;
}

- (id)initWithLabelText:(NSString *)labelText target:(id)aTarget action:(SEL)anAction {
	if (self = [self init]) {
		self.textLabel.text = labelText;
		[self setTarget:aTarget action:anAction];
	}
	
	return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
	[super setSelected:selected animated:animated];
	
	if (selected)
		[target performSelector:action withObject:self];
}

- (void)setTarget:(id)aTarget action:(SEL)anAction {
	if (target != aTarget) {
		[target release];
		target = [aTarget retain];		
	}
	action = anAction;
}

- (void)dealloc {
	[target release];
	[super dealloc];
}

@end
