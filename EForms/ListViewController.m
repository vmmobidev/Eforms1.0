//
//  ListViewController.m
//  EForms
//
//  Created by Rahul kumar on 1/8/13.
//  Copyright (c) 2013 vmoksha. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController
@synthesize barButton,saveButton,clrButton,ambtTempSlidr,strtTempSlidr,finishTempSlidr,dateString,getPickerString,landScapeView,potraitView;

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
     [barButton useRedDeleteStyle];
    mainTitlLbl.text = @"Goods Rec.";
    dataArray = [[NSMutableArray alloc]initWithObjects:@"Meal Dishing",@"Goods Rec.",@"Cl2 Check",@"Thawing",@"Blast Chilling",@"Bakery/Pastry",@"Pastry Portioning",@"Personal Hygiene",@"Tray Settings",@"Dispatching",@"AirCraft Loading",@"StaffFood", nil];
    // Do any additional setup after loading the view from its nib.
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didRotate:) name:@"UIDeviceOrientationDidChangeNotification"  object:nil];
    orientation = [[UIDevice currentDevice] orientation];
    if (orientation == UIDeviceOrientationUnknown || orientation == UIDeviceOrientationFaceUp || orientation == UIDeviceOrientationFaceDown) {
        orientation = UIDeviceOrientationPortrait;
    }

}
-(IBAction)homeclick:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //if (databool) {
        return [dataArray count];
   // }
//    if (shftbool) {
//        return [shiftArray count];
//    }
//    if (productbool) {
//        return [productArray count];
//    }
//    if (classbool) {
//        return [classArray count];
//    }
//    if (oalbool) {
//        return [oalArray count];
//    }
//    if (etdbool) {
//        return [etdArray count];
//    }
//    if (listbool) {
//        return [listArray count];
//    }
//    
//    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    //{
        UITableViewCell *cell = [dataTable dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
            
            UILabel *txtLbl= [[UILabel alloc]init];
            txtLbl.frame = CGRectMake(07,10, 160, 22);
            txtLbl.font = [UIFont boldSystemFontOfSize:15];
            txtLbl.tag = 30;
            [cell.contentView addSubview:txtLbl];
            
            UILabel *cntLbl= [[UILabel alloc]init];
            cntLbl.frame = CGRectMake(190,12, 20, 20);
            cntLbl.font = [UIFont boldSystemFontOfSize:12];
            cntLbl.backgroundColor = [UIColor grayColor];
            cntLbl.textColor = [UIColor whiteColor];
            cntLbl.textAlignment = UITextAlignmentCenter;
            cntLbl.shadowColor = [UIColor blackColor];
            cntLbl.layer.cornerRadius = 8;
            cntLbl.tag = 50;
            [cell.contentView addSubview:cntLbl];
        }
        
        UILabel *dptLbl = (UILabel *)[cell.contentView viewWithTag:50];
        if (indexPath.row==0) {
            dptLbl.text =[NSString stringWithFormat:@"%d",[listArray count]];
        }
        else{
            dptLbl.text = @"5";
        }
        UILabel *txtLbl = (UILabel *)[cell.contentView viewWithTag:30];
        txtLbl.text =  [dataArray objectAtIndex:indexPath.row];
        
        return cell;
    }

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

-(void)didRotate:(NSNotification *)notification  {
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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ((orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)) {
        // Clear the current view and insert the orientation specific view.
        [self clearCurrentView];
        [self.view insertSubview:landScapeView atIndex:0];
    } else if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) {
        // Clear the current view and insert the orientation specific view.
        [self clearCurrentView];
        [self.view insertSubview:potraitView atIndex:0];
    }
    
	return YES;
}
-(void) clearCurrentView {
    if (landScapeView.superview) {
        [landScapeView removeFromSuperview];
    } else if (potraitView.superview) {
        [potraitView removeFromSuperview];
    }
}


@end
