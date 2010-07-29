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
		UIImage *image = [[UIImage imageNamed:@"redButton.png"] stretchableImageWithLeftCapWidth:6.0 topCapHeight:0.0];

		button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.titleLabel.textColor = [UIColor whiteColor];
        button.titleLabel.font = [UIFont boldSystemFontOfSize:20.0];
        button.titleLabel.shadowColor = [UIColor colorWithWhite:0 alpha:0.5];
        button.titleLabel.shadowOffset = CGSizeMake(0, -1);
        [button setBackgroundImage:image forState:UIControlStateNormal];
        
        [self.contentView addSubview:button];
        
		self.backgroundColor = [UIColor clearColor];
    }
	
    return self;
}

- (id)initWithLabelText:(NSString *)labelText target:(id)aTarget action:(SEL)anAction {
	if (self = [self init]) {
        [button setTitle:labelText forState:UIControlStateNormal];
        [self addTarget:aTarget action:anAction forControlEvents:UIControlEventTouchUpInside];
	}
	
	return self;
}

- (void)addTarget:(id)aTarget action:(SEL)anAction forControlEvents:(UIControlEvents)controlEvents {
    [button addTarget:aTarget action:anAction forControlEvents:controlEvents];
}

- (void)removeTarget:(id)aTarget action:(SEL)anAction forControlEvents:(UIControlEvents)controlEvents {
    [button removeTarget:aTarget action:anAction forControlEvents:controlEvents];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    button.frame = CGRectInset(self.contentView.bounds, 0, -2);
}

@end
