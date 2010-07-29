//
//  BPButtonTableViewCell.h
//  Brewtool
//
//  Created by Jon Olson on 9/24/09.
//  Copyright 2009 Ballistic Pigeon, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface BPButtonTableViewCell : UITableViewCell {
    UIButton *button;
}

- (id)initWithLabelText:(NSString *)labelText target:(id)aTarget action:(SEL)anAction;

- (void)addTarget:(id)aTarget action:(SEL)anAction forControlEvents:(UIControlEvents)controlEvents;
- (void)removeTarget:(id)aTarget action:(SEL)anAction forControlEvents:(UIControlEvents)controlEvents;

@end
