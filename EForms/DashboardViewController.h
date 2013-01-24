//
//  DashboardViewController.h
//  EForms
//
//  Created by Rahul kumar on 1/7/13.
//  Copyright (c) 2013 vmoksha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GradientButton.h"

@interface DashboardViewController : UIViewController{
    IBOutlet GradientButton *bottom;
    IBOutlet UIView *landScapeView;
    IBOutlet UIView *potraitView;
    UIDeviceOrientation orientation;
}
@property(nonatomic,retain)IBOutlet UIView *landScapeView;
@property(nonatomic,retain)IBOutlet UIView *potraitView;
@property(nonatomic,retain)IBOutlet GradientButton *bottom;

-(void)clearCurrentView;
-(IBAction)datacptr:(id)sender;
-(IBAction)settings:(id)sender;
-(IBAction)about:(id)sender;
@end
