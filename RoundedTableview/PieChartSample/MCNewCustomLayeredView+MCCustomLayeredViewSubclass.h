//
//  MCNewCustomLayeredView+MCCustomLayeredViewSubclass.h
//  MCCore
//
//  Created by Planet Web Solution on 6/16/15.
//  Copyright (c) 2015 pws. All rights reserved.
//

#import "MCCore.h"
#import <UIKit/UIGestureRecognizerSubclass.h>

/*
 This header file must be imported by every class that wants to subclass MCNewCustomLayeredView
 Code that uses subclasses of MCNewCustomLayeredView must never call these
 To subclass MCNewCustomLayeredView add:
 
 #import "MCNewCustomLayeredView+MCCustomLayeredViewSubclass.h>
 
 on the implementation file.
 */

@interface MCNewCustomLayeredView (MCCustomLayeredViewSubclass)

// initialization methods
- (void)setDefaults;

// drawing methods
- (void)willDrawSublayers;
- (void)didDrawSublayers;

// custom layer management methods
- (void)addItem:(MCNewCustomLayer*)layer;
- (void)removeItem:(MCNewCustomLayer*)layerToBeRemoved;
- (NSArray*)getAllItems;
- (MCNewCustomLayer*)getItemAtIndex:(NSInteger)index;
- (MCNewCustomLayer*)itemForIndex:(NSInteger)index withReuseItem:(MCNewCustomLayer*)reuseItem;
- (id)identifierForItemAtIndex:(NSInteger)index;
- (Class)classForSublayers;

// touch methods
- (void)customLayeredView:(MCNewCustomLayeredView*)customLayeredView
  didTouchMainPathOnLayer:(MCNewCustomLayer*)layer;

// data source mapping methods
// (extremelly required methods)
- (NSInteger)dataSourceNumberOfItemsInView:(MCNewCustomLayeredView*)view;

@end
