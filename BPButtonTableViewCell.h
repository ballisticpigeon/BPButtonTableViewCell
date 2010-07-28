//
//  BPButtonTableViewCell.h
//  Brewtool
//
//  Created by Jon Olson on 9/24/09.
//  Copyright 2009 Ballistic Pigeon, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface BPButtonTableViewCell : UITableViewCell {
	id target;
	SEL action;
}

- (id)initWithLabelText:(NSString *)labelText target:(id)aTarget action:(SEL)anAction;

- (void)setTarget:(id)aTarget action:(SEL)anAction;

@end
