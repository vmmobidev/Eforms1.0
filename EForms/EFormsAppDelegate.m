//
//  EFormsAppDelegate.m
//  EForms
//
//  Created by Rahul kumar on 1/4/13.
//  Copyright (c) 2013 vmoksha. All rights reserved.
//

#import "EFormsAppDelegate.h"

#import "EFormsViewController.h"

@implementation EFormsAppDelegate
@synthesize delegate;
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
     //[NSTimer scheduledTimerWithTimeInterval:10 target:self selector:@selector(myName) userInfo:nil repeats:NO];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[EFormsViewController alloc] initWithNibName:@"EFormsViewController" bundle:nil];
    self.navController = [[UINavigationController alloc]initWithRootViewController:self.viewController];
    self.window.rootViewController = self.navController;
    [self.window makeKeyAndVisible];
    return YES;
    //[[NSTimer alloc]initWithFireDate:self interval:10.0 target:self selector:@selector(myname) userInfo:nil repeats:NO];
   
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

-(void)myName{
    [self getResult:@"HIi"];
}

-(void)getResult:(id)_result{
  	//Stored the results in the _result of the Connection delegate Method
	[delegate getResult:_result];
}


- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
