//
//  DashboardViewController.m
//  EForms
//
//  Created by Rahul kumar on 1/7/13.
//  Copyright (c) 2013 vmoksha. All rights reserved.
//

#import "DashboardViewController.h"
#import "DataCaptureMainViewController.h"
#import "SettingsViewController.h"
#import "AboutViewController.h"

@interface DashboardViewController ()

@end

@implementation DashboardViewController
@synthesize bottom,landScapeView,potraitView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [bottom useRedDeleteStyle];
    [self.navigationController setNavigationBarHidden:YES];
    // Do any additional setup after loading the view from its nib.
    [self.view addSubview:landScapeView];
//    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didRotate:) name:@"UIDeviceOrientationDidChangeNotification"  object:nil];
//    orientation = [[UIDevice currentDevice] orientation];
//    if (orientation == UIDeviceOrientationUnknown || orientation == UIDeviceOrientationFaceUp || orientation == UIDeviceOrientationFaceDown) {
//        orientation = UIDeviceOrientationPortrait;
//    }
   // [self didRotate];
	// Do any additional setup after loading the view, typically from a nib.
}


//-(void)didRotate:(NSNotification *)notification  {
//    UIDeviceOrientation newOrientation = [[UIDevice currentDevice] orientation];
//    if (newOrientation != UIDeviceOrientationUnknown && newOrientation != UIDeviceOrientationFaceUp && newOrientation != UIDeviceOrientationFaceDown) {
//        orientation = newOrientation;
//    }
//    
//    // Do your orientation logic here
//    if ((orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)) {
//        // Clear the current view and insert the orientation specific view.
//        [self clearCurrentView];
//        [self.view insertSubview:landScapeView atIndex:0];
//    } else if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) {
//        // Clear the current view and insert the orientation specific view.
//        [self clearCurrentView];
//        [self.view insertSubview:potraitView atIndex:0];
//    }
//}
//}


-(void) clearCurrentView {
    if (landScapeView.superview) {
        [landScapeView removeFromSuperview];
    } else if (potraitView.superview) {
        [potraitView removeFromSuperview];
    }
}

-(IBAction)datacptr:(id)sender{
    DataCaptureMainViewController *data = [[DataCaptureMainViewController alloc]initWithNibName:@"DataCaptureMainViewController" bundle:nil];
    [self.navigationController pushViewController:data animated:YES];
    
}

-(IBAction)settings:(id)sender{
    SettingsViewController *data = [[SettingsViewController alloc]initWithNibName:@"SettingsViewController" bundle:nil];
    [self.navigationController pushViewController:data animated:YES];
}

-(IBAction)about:(id)sender{
    AboutViewController *data = [[AboutViewController alloc]initWithNibName:@"AboutViewController" bundle:nil];
    [self.navigationController pushViewController:data animated:YES];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ((orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)) {
        // Clear the current view and insert the orientation specific view.
       // [self clearCurrentView];
        [self.view insertSubview:landScapeView atIndex:0];
    } else if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) {
        // Clear the current view and insert the orientation specific view.
        //[self clearCurrentView];
        [self.view insertSubview:potraitView atIndex:0];
    }
	return YES;
}

@end
