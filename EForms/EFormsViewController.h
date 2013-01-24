//
//  EFormsViewController.h
//  EForms
//
//  Created by Rahul kumar on 1/4/13.
//  Copyright (c) 2013 vmoksha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GradientButton.h"
#import "EFormsAppDelegate.h"

@interface EFormsViewController : UIViewController{
    IBOutlet UIView *landScapeView;
    IBOutlet UIView *potraitView;
    IBOutlet GradientButton *signInButton;
    IBOutlet GradientButton *bottom;
    UIDeviceOrientation orientation;
    EFormsAppDelegate *appDelegate;
}
@property(nonatomic,retain)IBOutlet UIView *landScapeView;
@property(nonatomic,retain)IBOutlet UIView *potraitView;
@property(nonatomic,retain)IBOutlet GradientButton *signInButton;
@property(nonatomic,retain)IBOutlet GradientButton *bottom;
 
-(IBAction)signin:(id)sender;
-(void)clearCurrentView;
@end
