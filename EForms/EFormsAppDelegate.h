//
//  EFormsAppDelegate.h
//  EForms
//
//  Created by Rahul kumar on 1/4/13.
//  Copyright (c) 2013 vmoksha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConnectionDelegate.h"

@class EFormsViewController;

@interface EFormsAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) EFormsViewController *viewController;

@property(strong,nonatomic) UINavigationController *navController;

@property (nonatomic, retain) id delegate;
@end
