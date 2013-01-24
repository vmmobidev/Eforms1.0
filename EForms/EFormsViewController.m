//
//  EFormsViewController.m
//  EForms
//
//  Created by Rahul kumar on 1/4/13.
//  Copyright (c) 2013 vmoksha. All rights reserved.
//

#import "EFormsViewController.h"
#import "DashboardViewController.h"

@interface EFormsViewController ()

@end

@implementation EFormsViewController
@synthesize bottom,signInButton,potraitView,landScapeView;

- (void)viewDidLoad
{
     appDelegate = (EFormsAppDelegate *)[[UIApplication sharedApplication]delegate];
    [appDelegate setDelegate:self];
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];
    [signInButton useRedDeleteStyle];
    [bottom useRedDeleteStyle];
    [self.view addSubview:landScapeView];
//    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didRotate:) name:@"UIDeviceOrientationDidChangeNotification"  object:nil];
//    orientation = [[UIDevice currentDevice] orientation];
//    if (orientation == UIDeviceOrientationUnknown || orientation == UIDeviceOrientationFaceUp || orientation == UIDeviceOrientationFaceDown) {
//       	        orientation = UIDeviceOrientationPortrait;
//    }
	// Do any additional setup after loading the view, typically from a nib.
}



/*
-(void)didRotate:(NSNotification *)notification {
     UIDeviceOrientation newOrientation = [[UIDevice currentDevice] orientation];
     if (newOrientation != UIDeviceOrientationUnknown && newOrientation != UIDeviceOrientationFaceUp && newOrientation != UIDeviceOrientationFaceDown) {
     orientation = newOrientation;
    }
    
    // Do your orientation logic here
    if ((orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)) {
      // Clear the current view and insert the orientation specific view.
       [self clearCurrentView];
       [self.view insertSubview:landScapeView atIndex:0];
        } else if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) {
                 // Clear the current view and insert the orientation specific view.
                  [self clearCurrentView];
                   [self.view insertSubview:potraitView atIndex:0];
                }
    }
//}*/

-(void)getResult:(id) _result{
    NSLog(@"hihihii...%@",_result);
}

//
//-(void) clearCurrentView {
//     if (landScapeView.superview) {
//      [landScapeView removeFromSuperview];
//      } else if (potraitView.superview) {
//        [potraitView removeFromSuperview];
//         }
//    }

-(IBAction)signin:(id)sender{
    DashboardViewController *dash = [[DashboardViewController alloc]initWithNibName:@"DashboardViewController" bundle:nil];
    [self.navigationController pushViewController:dash animated:YES];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if (interfaceOrientation == UIInterfaceOrientationPortrait||interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
        self.navigationController.view = potraitView;
       // [self.navigationController.view setFrame:CGRectMake(0, 0, 768 , 1024)];
    }
    if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||interfaceOrientation == UIInterfaceOrientationLandscapeRight) {
        //[self.navigationController.view setFrame:CGRectMake(0, 0, 1024 , 768)];
        self.navigationController.view = landScapeView;
    }
    return YES;
}


@end
