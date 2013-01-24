//
//  DataCaptureMainViewController.m
//  EForms
//
//  Created by Rahul kumar on 1/7/13.
//  Copyright (c) 2013 vmoksha. All rights reserved.
//

#import "DataCaptureMainViewController.h"
#import "ListViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "CustomCellViewController.h"

@interface DataCaptureMainViewController ()

@end

@implementation DataCaptureMainViewController
@synthesize pbarButton,lbarButton,saveButton,clrButton,ambtTempSlidr,strtTempSlidr,finishTempSlidr,dateString,getPickerString,landScapeView,potraitView,Button0,Button1,Button2,Button3,Button4,Button5,Button6,Button7,Button8,Button9,ButtonDone,ButtonDot,ButtonNext,ButtonPrevious,saveButton2;

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
    databool = TRUE;
    shftbool = FALSE;
    oalbool = FALSE;
    productbool = FALSE;
    etdbool = FALSE;
    classbool = FALSE;
    listbool = FALSE;
    unitbool = FALSE;
    meal1Bybool = FALSE;
    meal2Bybool = FALSE;
    dateclickBool = FALSE;
    ambtTempclickBool= FALSE;
    strtTimeclickBool= FALSE;
    strtTempclickBool= FALSE;
    endTempClickBool= FALSE;
    endTimeClickBool= FALSE;
    hotMealClickBool= FALSE;
    [self readFromDatabse];
    [pbarButton useRedDeleteStyle];
    [lbarButton useRedDeleteStyle];
    [saveButton useGreenConfirmStyle];
    [clrButton useWhiteActionSheetStyle];
    [Button0 useAlertStyle];
    [Button1 useAlertStyle];
    [Button2 useAlertStyle];
    [Button3 useAlertStyle];
    [Button4 useAlertStyle];
    [Button5 useAlertStyle];
    [Button6 useAlertStyle];
    [Button7 useAlertStyle];
    [Button8 useAlertStyle];
    [Button9 useAlertStyle];
    [ButtonDot useAlertStyle];
    [ButtonDone useAlertStyle];
    [ButtonNext useAlertStyle];
    [ButtonPrevious useAlertStyle];
    [saveButton2 useGreenConfirmStyle];
    
    Button1.backgroundColor = [UIColor clearColor];
    Button2.backgroundColor = [UIColor clearColor];
    Button3.backgroundColor = [UIColor clearColor];
    meal2Scroll.backgroundColor = [UIColor clearColor];
    [self.navigationController setNavigationBarHidden:YES];
    [ambtTempSlidr setThumbImage: [UIImage imageNamed:@"buttonNw.png"] forState:UIControlStateNormal];
    [strtTempSlidr setThumbImage: [UIImage imageNamed:@"buttonNw.png"] forState:UIControlStateNormal];
    [finishTempSlidr setThumbImage: [UIImage imageNamed:@"buttonNw.png"] forState:UIControlStateNormal];
    dataArray = [[NSMutableArray alloc]initWithObjects:@"Meal Dishing01",@"Meal Dishing02",@"Cl2 Check",@"Thawing",@"Blast Chilling",@"Bakery/Pastry",@"Pastry Portioning",@"Personal Hygiene",@"Tray Settings",@"Dispatching",@"Aircraft Loading",@"Staff Food",@"Cl2 Check",@"Bakery/Pastry",@"Thawing",@"Dispatching", nil];
    shiftArray = [[NSMutableArray alloc]initWithObjects:@"Shift1",@"Shift2",@"Shift3",nil];
    unitArray = [[NSMutableArray alloc]initWithObjects:@"EKFC01",@"EKFC02",@"EKFC03",nil];
    oalArray = [[NSMutableArray alloc]initWithObjects:@"OAL1",@"OAL2",@"OAL3",@"OAL4",nil];
    productArray = [[NSMutableArray alloc]initWithObjects:@"Denver Omelet",@"Scrapple",@"Frito pie",@"Peach cobbler",@"Brunswick stew",@"Biryani",@"Pizza",@"Noodles",@"Fried Rice",@"Indian Bread",@"Rice Cake",@"Chilli Chicken",@"Gobi Manchurian",nil];
    etdArray = [[NSMutableArray alloc]initWithObjects:@"ETD1",@"ETD2",@"ETD3",@"ETD4",nil];
    classArray = [[NSMutableArray alloc]initWithObjects:@"Economy",@"Bussiness",nil];
    [self.view addSubview:landScapeView];
//    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didRotate:) name:@"UIDeviceOrientationDidChangeNotification"  object:nil];
//    orientation = [[UIDevice currentDevice] orientation];
//    if (orientation == UIDeviceOrientationUnknown || orientation == UIDeviceOrientationFaceUp || orientation == UIDeviceOrientationFaceDown) {
//        orientation = UIDeviceOrientationPortrait;
//    }

    // Do any additional setup after loading the view from its nib.
}

-(IBAction)unitclick:(id)sender{
    databool = FALSE;
    shftbool = FALSE;
    oalbool = FALSE;
    productbool = FALSE;
    etdbool = FALSE;
    classbool = FALSE;
    listbool = FALSE;
    unitbool = TRUE;
    carriedBybool = FALSE;
    foodsftyInchbool = FALSE;
    [dateFld resignFirstResponder];
    [ambtTemptFld resignFirstResponder];
    [dateFld resignFirstResponder];
    [carriedOutFld resignFirstResponder];
    [foodSftyINchageFld resignFirstResponder];
    [hotMealDishedView resignFirstResponder];
    [strtTempFld resignFirstResponder];
    [strtTimeFld resignFirstResponder];
    [finshTempFld resignFirstResponder];
    [finshTimeFld resignFirstResponder];
    [hotMealDshdFld resignFirstResponder];
    UIViewController *viewController = [[UIViewController alloc] init];
    
    //    UIImageView *titleBar = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    //    titleBar.image = [UIImage imageNamed:@"titleBarBackgroung.png"];
    //
    //    UILabel *titleBarLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    //    titleBarLabel.text = @"Engine Name";
    //    titleBarLabel.textColor = [UIColor whiteColor];
    //    titleBarLabel.center = CGPointMake(titleBar.center.x, titleBar.center.y);
    //    titleBarLabel.backgroundColor = [UIColor clearColor];
    //    titleBarLabel.textAlignment = UITextAlignmentCenter;
    //    //titleBarLabel.font
    //
    //    UIButton *clearButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //    clearButton.frame = CGRectMake(257, 4, 55, 37);
    //    [clearButton setTitle:@"Clear" forState:UIControlStateNormal];
    //    [clearButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //    [clearButton addTarget:self action:@selector(clearButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    //
    //    [viewController.view addSubview:titleBar];
    //    [viewController.view addSubview:titleBarLabel];
    //    [viewController.view addSubview:clearButton];
    //
    //    [viewController.view bringSubviewToFront:titleBarLabel];
    //[viewController.view bringSubviewToFront:clearButton];
    
    if ( meal1Bybool) {
        shiftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, 320, 392) style:UITableViewStylePlain];
        shiftTableView.delegate = self;
        shiftTableView.dataSource = self;
        shiftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [viewController.view addSubview:shiftTableView];
        shiftPopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
        [shiftPopoverController setPopoverContentSize:CGSizeMake(320, 395)];
        shiftPopoverController.delegate = self;
        [shiftPopoverController presentPopoverFromRect:shiftButton.bounds inView:shiftButton permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    }
    if (meal2Bybool) {
        shiftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, 100, 135) style:UITableViewStylePlain];
        shiftTableView.delegate = self;
        shiftTableView.dataSource = self;
        shiftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [viewController.view addSubview:shiftTableView];
        shiftPopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
        [shiftPopoverController setPopoverContentSize:CGSizeMake(100, 135)];
        shiftPopoverController.delegate = self;
        [shiftPopoverController presentPopoverFromRect:unitFld.bounds inView:unitFld permittedArrowDirections:UIPopoverArrowDirectionLeft animated:YES];
    }
    
//}

}

-(IBAction)homeclick:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

-(IBAction)dateclick:(id)sender{
    [timeView removeFromSuperview];
    [pickerView removeFromSuperview];
    dateView.frame = CGRectMake(420, 63, 310, dateView.frame.size.height);
    //dydtlbl.text = @"Select date";
    [mealScroll addSubview:dateView];
    if ((orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)) {
        dateView.frame = CGRectMake(420, 63, 310, dateView.frame.size.height);
        //dydtlbl.text = @"Select date";
        [mealScroll addSubview:dateView];
        [dtePicker setMinimumDate:[NSDate date]];
    } else if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) {
        dateView.frame = CGRectMake(220, 63, 310, dateView.frame.size.height);
        //dydtlbl.text = @"Select date";
        [mealScroll addSubview:dateView];
        [dtePicker setMinimumDate:[NSDate date]];
    }
   
}
-(IBAction)shiftclick:(id)sender{
    [dateFld resignFirstResponder];
    [ambtTemptFld resignFirstResponder];
    [dateFld resignFirstResponder];
    [carriedOutFld resignFirstResponder];
    [foodSftyINchageFld resignFirstResponder];
    [hotMealDishedView resignFirstResponder];
    [strtTempFld resignFirstResponder];
    [strtTimeFld resignFirstResponder];
    [finshTempFld resignFirstResponder];
    [finshTimeFld resignFirstResponder];
    [hotMealDshdFld resignFirstResponder];
    databool = FALSE;
    shftbool = TRUE;
    oalbool = FALSE;
    productbool = FALSE;
    etdbool = FALSE;
    classbool = FALSE;
    listbool = FALSE;
    unitbool = FALSE;
    carriedBybool = FALSE;
    foodsftyInchbool = FALSE;
    UIViewController *viewController = [[UIViewController alloc] init];
    
//    UIImageView *titleBar = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
//    titleBar.image = [UIImage imageNamed:@"titleBarBackgroung.png"];
//    
//    UILabel *titleBarLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
//    titleBarLabel.text = @"Engine Name";
//    titleBarLabel.textColor = [UIColor whiteColor];
//    titleBarLabel.center = CGPointMake(titleBar.center.x, titleBar.center.y);
//    titleBarLabel.backgroundColor = [UIColor clearColor];
//    titleBarLabel.textAlignment = UITextAlignmentCenter;
//    //titleBarLabel.font
//    
//    UIButton *clearButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    clearButton.frame = CGRectMake(257, 4, 55, 37);
//    [clearButton setTitle:@"Clear" forState:UIControlStateNormal];
//    [clearButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [clearButton addTarget:self action:@selector(clearButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
//    
//    [viewController.view addSubview:titleBar];
//    [viewController.view addSubview:titleBarLabel];
//    [viewController.view addSubview:clearButton];
//    
//    [viewController.view bringSubviewToFront:titleBarLabel];
    //[viewController.view bringSubviewToFront:clearButton];
    
    if ( meal1Bybool) {
     shiftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, 320, 392) style:UITableViewStylePlain];
    shiftTableView.delegate = self;
    shiftTableView.dataSource = self;
       // shiftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [viewController.view addSubview:shiftTableView];
    shiftPopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
    [shiftPopoverController setPopoverContentSize:CGSizeMake(320, 395)];
    shiftPopoverController.delegate = self;
    [shiftPopoverController presentPopoverFromRect:shiftButton.bounds inView:shiftButton permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    }
    if (meal2Bybool) {
        shiftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, 100, 136) style:UITableViewStylePlain];
        shiftTableView.delegate = self;
        shiftTableView.dataSource = self;
        //shiftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [viewController.view addSubview:shiftTableView];
        shiftPopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
        [shiftPopoverController setPopoverContentSize:CGSizeMake(100, 136)];
        shiftPopoverController.delegate = self;
        [shiftPopoverController presentPopoverFromRect:shiftButton2.bounds inView:shiftButton2 permittedArrowDirections:UIPopoverArrowDirectionRight animated:YES];
    }
    
}
-(IBAction)productclick:(id)sender{
    [dateFld resignFirstResponder];
    [ambtTemptFld resignFirstResponder];
    [dateFld resignFirstResponder];
    [carriedOutFld resignFirstResponder];
    [foodSftyINchageFld resignFirstResponder];
    [hotMealDishedView resignFirstResponder];
    [strtTempFld resignFirstResponder];
    [strtTimeFld resignFirstResponder];
    [finshTempFld resignFirstResponder];
    [finshTimeFld resignFirstResponder];
    [hotMealDshdFld resignFirstResponder];
    databool = FALSE;
    shftbool = FALSE;
    oalbool = FALSE;
    productbool = TRUE;
    etdbool = FALSE;
    classbool = FALSE;
    listbool = FALSE;
    unitbool = FALSE;
    carriedBybool = FALSE;
    foodsftyInchbool = FALSE;
    UIViewController *viewController = [[UIViewController alloc] init];
    
     if ( meal1Bybool) {
    shiftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, 320, 392) style:UITableViewStylePlain];
    shiftTableView.delegate = self;
    shiftTableView.dataSource = self;
        // shiftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [viewController.view addSubview:shiftTableView];
    shiftPopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
    [shiftPopoverController setPopoverContentSize:CGSizeMake(320, 395)];
    shiftPopoverController.delegate = self;
    
    [shiftPopoverController presentPopoverFromRect:productButton.bounds inView:productButton permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
     }
     if ( meal2Bybool) {
         shiftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, 200, 550) style:UITableViewStylePlain];
         shiftTableView.delegate = self;
         shiftTableView.dataSource = self;
         //shiftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
         [viewController.view addSubview:shiftTableView];
         shiftPopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
         [shiftPopoverController setPopoverContentSize:CGSizeMake(200, 550)];
         shiftPopoverController.delegate = self;
         
         [shiftPopoverController presentPopoverFromRect:productFld.bounds inView:productFld permittedArrowDirections:UIPopoverArrowDirectionLeft animated:YES];
     }
}
-(IBAction)oalclick:(id)sender{
    [dateFld resignFirstResponder];
    [ambtTemptFld resignFirstResponder];
    [dateFld resignFirstResponder];
    [carriedOutFld resignFirstResponder];
    [foodSftyINchageFld resignFirstResponder];
    [hotMealDishedView resignFirstResponder];
    [strtTempFld resignFirstResponder];
    [strtTimeFld resignFirstResponder];
    [finshTempFld resignFirstResponder];
    [finshTimeFld resignFirstResponder];
    [hotMealDshdFld resignFirstResponder];
    databool = FALSE;
    shftbool = FALSE;
    oalbool = TRUE;
    productbool = FALSE;
    etdbool = FALSE;
    classbool = FALSE;
    listbool = FALSE;
    unitbool = FALSE;
    carriedBybool = FALSE;
    foodsftyInchbool = FALSE;
    UIViewController *viewController = [[UIViewController alloc] init];
    if (meal1Bybool) {
     shiftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, 320, 392) style:UITableViewStylePlain];
    shiftTableView.delegate = self;
    shiftTableView.dataSource = self;
        shiftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
     [viewController.view addSubview:shiftTableView];
     shiftPopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
    [shiftPopoverController setPopoverContentSize:CGSizeMake(320, 395)];
    shiftPopoverController.delegate = self;
     [shiftPopoverController presentPopoverFromRect:oalButton.bounds inView:oalButton permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    }
    if (meal2Bybool) {
        shiftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, 100, 180) style:UITableViewStylePlain];
        shiftTableView.delegate = self;
        shiftTableView.dataSource = self;
        shiftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [viewController.view addSubview:shiftTableView];
        shiftPopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
        [shiftPopoverController setPopoverContentSize:CGSizeMake(100, 180)];
        shiftPopoverController.delegate = self;
        [shiftPopoverController presentPopoverFromRect:oalFld.bounds inView:oalFld permittedArrowDirections:UIPopoverArrowDirectionLeft animated:YES];
    }
    
}
-(IBAction)classclick:(id)sender{
    [dateFld resignFirstResponder];
    [ambtTemptFld resignFirstResponder];
    [dateFld resignFirstResponder];
    [carriedOutFld resignFirstResponder];
    [foodSftyINchageFld resignFirstResponder];
    [hotMealDishedView resignFirstResponder];
    [strtTempFld resignFirstResponder];
    [strtTimeFld resignFirstResponder];
    [finshTempFld resignFirstResponder];
    [finshTimeFld resignFirstResponder];
    [hotMealDshdFld resignFirstResponder];
    databool = FALSE;
    shftbool = FALSE;
    oalbool = FALSE;
    productbool = FALSE;
    etdbool = FALSE;
    classbool = TRUE;
    listbool = FALSE;
    unitbool = FALSE;
    carriedBybool = FALSE;
    foodsftyInchbool = FALSE;
    UIViewController *viewController = [[UIViewController alloc] init];
    if (meal1Bybool) {
     shiftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, 320, 392) style:UITableViewStylePlain];
    shiftTableView.delegate = self;
    shiftTableView.dataSource = self;
     [viewController.view addSubview:shiftTableView];
    shiftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
     shiftPopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
    [shiftPopoverController setPopoverContentSize:CGSizeMake(320, 395)];
    shiftPopoverController.delegate = self;
     [shiftPopoverController presentPopoverFromRect:classButton.bounds inView:classButton permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    }
    if (meal2Bybool) {
        shiftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, 130, 90) style:UITableViewStylePlain];
        shiftTableView.delegate = self;
        shiftTableView.dataSource = self;
        shiftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [viewController.view addSubview:shiftTableView];
        shiftPopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
        [shiftPopoverController setPopoverContentSize:CGSizeMake(130, 90)];
        shiftPopoverController.delegate = self;
        [shiftPopoverController presentPopoverFromRect:classFld.bounds inView:classFld permittedArrowDirections:UIPopoverArrowDirectionLeft animated:YES];
    }
    
}
-(IBAction)etdClick:(id)sender{
    databool = FALSE;
    shftbool = FALSE;
    oalbool = FALSE;
    productbool = FALSE;
    etdbool = TRUE;
    classbool = FALSE;
    listbool = FALSE;
    unitbool = FALSE;
    carriedBybool = FALSE;
    foodsftyInchbool = FALSE;
    [dateFld resignFirstResponder];
    [ambtTemptFld resignFirstResponder];
    [dateFld resignFirstResponder];
    [carriedOutFld resignFirstResponder];
    [foodSftyINchageFld resignFirstResponder];
    [hotMealDishedView resignFirstResponder];
    [strtTempFld resignFirstResponder];
    [strtTimeFld resignFirstResponder];
    [finshTempFld resignFirstResponder];
    [finshTimeFld resignFirstResponder];
    [hotMealDshdFld resignFirstResponder];
    UIViewController *viewController = [[UIViewController alloc] init];
    if (meal1Bybool) {
    shiftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, 320, 392) style:UITableViewStylePlain];
    shiftTableView.delegate = self;
    shiftTableView.dataSource = self;
    shiftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
     [viewController.view addSubview:shiftTableView];
      shiftPopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
    [shiftPopoverController setPopoverContentSize:CGSizeMake(320, 395)];
    shiftPopoverController.delegate = self;
     [shiftPopoverController presentPopoverFromRect:etdButton.bounds inView:etdButton permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    }
    if (meal2Bybool) {
        shiftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, 100, 180) style:UITableViewStylePlain];
        shiftTableView.delegate = self;
        shiftTableView.dataSource = self;
        shiftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [viewController.view addSubview:shiftTableView];
        shiftPopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
        [shiftPopoverController setPopoverContentSize:CGSizeMake(100, 180)];
        shiftPopoverController.delegate = self;
        [shiftPopoverController presentPopoverFromRect:etdFld.bounds inView:etdFld permittedArrowDirections:UIPopoverArrowDirectionLeft animated:YES];
    }
    
}


-(IBAction)nameCustomPicker:(id)sender{
    noOfmealbool = FALSE;
    carriedBybool = TRUE;
    foodsftyInchbool = FALSE;
    itemArray = [[NSMutableArray alloc]init];
     noOfMealArray = [[NSMutableArray alloc] initWithObjects:@"Gale Lambert",@"Gardner Henry",@"Mont gomery",@"Neal Quinlan",@"Gomery Lambert",@"Henry Morgan",@"Hale  Ridley",@"Morgan gomery",@"Replacement", nil];
    //   // if ((orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)) {
    //
    //        [self pickerViewItem:noOfMealArray];
    ////    } else if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) {
    //    if (meal1Bybool) {
    //         pickerView.frame  = CGRectMake(220, 35, 150, pickerView.frame.size.height);
    ////        [self pickerViewItem:noOfMealArray];
    //     }
    //    if (meal2Bybool) {
    //        pickerView.frame  = CGRectMake(528, 127, 150, pickerView.frame.size.height);
    //    }
    databool = FALSE;
    shftbool = FALSE;
    oalbool = FALSE;
    productbool = FALSE;
    etdbool = FALSE;
    classbool = FALSE;
    listbool = FALSE;
    unitbool = FALSE;
    [dateFld resignFirstResponder];
    [ambtTemptFld resignFirstResponder];
    [dateFld resignFirstResponder];
    [carriedOutFld resignFirstResponder];
    [foodSftyINchageFld resignFirstResponder];
    [hotMealDishedView resignFirstResponder];
    [strtTempFld resignFirstResponder];
    [strtTimeFld resignFirstResponder];
    [finshTempFld resignFirstResponder];
    [finshTimeFld resignFirstResponder];
    [hotMealDshdFld resignFirstResponder];
    UIViewController *viewController = [[UIViewController alloc] init];
    if (meal1Bybool) {
        shiftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, 320, 392) style:UITableViewStylePlain];
        shiftTableView.delegate = self;
        shiftTableView.dataSource = self;
        shiftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [viewController.view addSubview:shiftTableView];
        shiftPopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
        [shiftPopoverController setPopoverContentSize:CGSizeMake(320, 395)];
        shiftPopoverController.delegate = self;
        [shiftPopoverController presentPopoverFromRect:etdButton.bounds inView:etdButton permittedArrowDirections:UIPopoverArrowDirectionRight animated:YES];
    }
    if (meal2Bybool) {
        shiftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, 200, 400) style:UITableViewStylePlain];
        shiftTableView.delegate = self;
        shiftTableView.dataSource = self;
        //shiftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [viewController.view addSubview:shiftTableView];
        shiftPopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
        [shiftPopoverController setPopoverContentSize:CGSizeMake(200, 400)];
        shiftPopoverController.delegate = self;
        [shiftPopoverController presentPopoverFromRect:carriedOutFld.bounds inView:carriedOutFld permittedArrowDirections:UIPopoverArrowDirectionLeft animated:YES];
    }
    
    
}

-(IBAction)foodsafetyIncharge:(id)sender{
    [dateFld resignFirstResponder];
    [ambtTemptFld resignFirstResponder];
    [dateFld resignFirstResponder];
    [carriedOutFld resignFirstResponder];
    [foodSftyINchageFld resignFirstResponder];
    [hotMealDishedView resignFirstResponder];
    [strtTempFld resignFirstResponder];
    [strtTimeFld resignFirstResponder];
    [finshTempFld resignFirstResponder];
    [finshTimeFld resignFirstResponder];
    [hotMealDshdFld resignFirstResponder];
    noOfmealbool = FALSE;
    carriedBybool = FALSE;
    foodsftyInchbool = TRUE;
    databool = FALSE;
    shftbool = FALSE;
    oalbool = FALSE;
    productbool = FALSE;
    etdbool = FALSE;
    classbool = FALSE;
    listbool = FALSE;
    unitbool = FALSE;
    itemArray = [[NSMutableArray alloc]init];
      noOfMealArray = [[NSMutableArray alloc] initWithObjects:@"Medwin Ridley",@"Lyndon Hale",@"Morgan Quinlan",@"Hale Gilbert",@"Replacement", nil];
//    [self pickerViewItem:noOfMealArray];
//    if (meal1Bybool) {
//        pickerView.frame  = CGRectMake(220, 35, 150, pickerView.frame.size.height);
//        //        [self pickerViewItem:noOfMealArray];
//    }
//    if (meal2Bybool) {
//        pickerView.frame  = CGRectMake(528, 210, 150, pickerView.frame.size.height);
//    }
    UIViewController *viewController = [[UIViewController alloc] init];
    if (meal1Bybool) {
        shiftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, 320, 392) style:UITableViewStylePlain];
        shiftTableView.delegate = self;
        shiftTableView.dataSource = self;
        shiftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [viewController.view addSubview:shiftTableView];
        shiftPopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
        [shiftPopoverController setPopoverContentSize:CGSizeMake(320, 395)];
        shiftPopoverController.delegate = self;
        [shiftPopoverController presentPopoverFromRect:etdButton.bounds inView:etdButton permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    }
    if (meal2Bybool) {
        shiftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, 200, 224) style:UITableViewStylePlain];
        shiftTableView.delegate = self;
        shiftTableView.dataSource = self;
        //shiftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [viewController.view addSubview:shiftTableView];
        shiftPopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
        [shiftPopoverController setPopoverContentSize:CGSizeMake(200, 224)];
        shiftPopoverController.delegate = self;
        [shiftPopoverController presentPopoverFromRect:foodSftyINchageFld.bounds inView:foodSftyINchageFld permittedArrowDirections:UIPopoverArrowDirectionRight animated:YES];
    }

}





-(IBAction)ambtTempSlidr:(id)sender{
  //  NSLog(@"sliderAction: value = %f", [ambtTempSlidr value]);
    ambtTemptLbl.text = [NSString stringWithFormat:@"%.1f C",[ambtTempSlidr value]];
}
-(IBAction)strtTempSlider:(id)sender{
    strtTemptLbl.text = [NSString stringWithFormat:@"%.1f C",[strtTempSlidr value]];
}
-(IBAction)finishTemp:(id)sender{
    finishTemptLbl.text = [NSString stringWithFormat:@"%.1f C",[finishTempSlidr value]];
}


-(IBAction)listView:(id)sender{
    [mealDishingView removeFromSuperview];
    [mealView removeFromSuperview];
    [self readFromDatabse];
    databool = FALSE;
    shftbool = FALSE;
    oalbool = FALSE;
    productbool = FALSE;
    etdbool = FALSE;
    classbool = FALSE;
    unitbool = FALSE;
    listbool = TRUE;
    
//    if ((orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)) {
//        // Clear the current view and insert the orientation specific view.
    
    listView.frame = CGRectMake(241, 47, 777, 694);
    CATransition *transition = [CATransition animation];
    transition.duration = 1.2;
    transition.type = kCATransitionFromRight; //choose your animation
    [listView.layer addAnimation:transition forKey:nil];
    //[self.view addSubview:newView];
    [self.view addSubview:listView];
    [listTable reloadData];
//    } else if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) {
//        // Clear the current view and insert the orientation specific view.
//        listView.frame = CGRectMake(240, 44, 530, 774);
//        CATransition *transition = [CATransition animation];
//        transition.duration = 1.2;
//        transition.type = kCATransitionFromRight; //choose your animation
//        [listView.layer addAnimation:transition forKey:nil];
//        //[self.view addSubview:newView];
//        [self.view addSubview:listView];
//        [listTable reloadData];
//
//    }

}

//////This is save action
-(IBAction)save:(id)sender{
//    if ([createdField.text length]>0&&[dateLbl.text length]>0&&[shiftLbl.text length]>0&&[ambtTemptLbl.text length]>0&&[oalLbl.text length]>0&&[classLbl.text length]>0&&[etdLbl.text length]>0&&[productLbl.text length]>0&&[startTimeLbl.text length]>0&&[strtTemptLbl.text length]>0&&[finishTimeLbl.text length]>0&&[finishTemptLbl.text length]>0&&[noOfMealLbl.text length]>0&&[hotMealDishedView.text length]>0&&[foodSftyInchrgField.text length]>0) {
//        [self addToDatabase];
//    }
    if ([carriedOutFld.text length]>0&&[dateFld.text length]>0&&[shiftFld.text length]>0&&[ambtTemptFld.text length]>0&&[oalFld.text length]>0&&[classFld.text length]>0&&[etdFld.text length]>0&&[productFld.text length]>0&&[strtTimeFld.text length]>0&&[strtTempFld.text length]>0&&[finshTimeFld.text length]>0&&[finshTempFld.text length]>0&&[hotMealDshdFld.text length]>0&&[hotMealDishedView.text length]>0&&[foodSftyINchageFld.text length]>0) {
        [hotMealDishedView resignFirstResponder];
        [self addToDatabase];
    }
    else{
        [hotMealDishedView resignFirstResponder];
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"INFO" message:@"Please fill all the field" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
}
-(IBAction)clear:(id)sender{
    
}
-(IBAction)add:(id)sender{
    createdField.userInteractionEnabled = YES;
    btn1.userInteractionEnabled = YES;
    btn2.userInteractionEnabled = YES;
    btn3.userInteractionEnabled = YES;
    btn4.userInteractionEnabled = YES;
    btn5.userInteractionEnabled = YES;
    btn6.userInteractionEnabled = YES;
    btn7.userInteractionEnabled = YES;
    btn8.userInteractionEnabled = YES;
    btn9.userInteractionEnabled = YES;
    btn10.userInteractionEnabled = YES;
    ambtTempSlidr.userInteractionEnabled = YES;
    strtTempSlidr.userInteractionEnabled = YES;
    finishTempSlidr.userInteractionEnabled = YES;
    hotMealDishedView.userInteractionEnabled = YES;
    foodSftyInchrgField.userInteractionEnabled = YES;
    unitFld.text = @"";
    dateFld.text = @"";
    ambtTemptFld.text = @"";
    productFld.text = @"";
    oalFld.text = @"";
    etdFld.text = @"";
    carriedOutFld.text = @"";
    shiftFld.text = @"";
    foodSftyINchageFld.text = @"";
    classFld.text = @"";
    strtTempFld.text = @"";
    strtTimeFld.text = @"";
    finshTempFld.text = @"";
    finshTimeFld.text = @"";
    hotMealDshdFld.text = @"";
    hotMealDishedView.text = @"";
    [mealDishingView removeFromSuperview];
    [listView removeFromSuperview];
    mealView.frame = CGRectMake(241, 42, 777, 680);
    //vm.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:mealView];
    //mainTitlLbl.text = [dataArray objectAtIndex:indexPath.row];
    //if ((orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)) {
        // Clear the current view and insert the orientation specific view.
//         mealDishingView.frame = CGRectMake(238, 42, 777, 662);
//        mealScroll.contentSize = CGSizeMake(700, 880);
//        [self.view addSubview:mealDishingView];
//    } else if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) {
//        // Clear the current view and insert the orientation specific view.
//        mealDishingView.frame = CGRectMake(238, 42, 530, 777);
//        mealScroll.contentSize = CGSizeMake(525, 880);
//        [self.view addSubview:mealDishingView];
//    }

    
    
    
}

-(IBAction)timePicker:(id)sender{
    [dateView removeFromSuperview];
    [pickerView removeFromSuperview];
    startTimebool = TRUE;
    finishTimebool = FALSE;
   // if ((orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)) {
        // Clear the current view and insert the orientation specific view.
      timeView.frame = CGRectMake(420, 306, 199, timeView.frame.size.height);
    //dydtlbl.text = @"Select date";
    [mealScroll addSubview:timeView];
//    } else if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) {
//        // Clear the current view and insert the orientation specific view.
//        timeView.frame = CGRectMake(220, 306, 199, timeView.frame.size.height);
//        //dydtlbl.text = @"Select date";
//        [mealScroll addSubview:timeView];
//    }
}
-(IBAction)customPicker:(id)sender{
    noOfmealbool = TRUE;
    carriedBybool = FALSE;
    itemArray = [[NSMutableArray alloc]init];
    noOfMealArray = [[NSMutableArray alloc] initWithObjects:@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12", nil];
   // if ((orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)) {
        // Clear the current view and insert the orientation specific view.
        pickerView.frame  = CGRectMake(420, 495, 64, pickerView.frame.size.height);
        [self pickerViewItem:noOfMealArray];
//    } else if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) {
//        // Clear the current view and insert the orientation specific view.
//        pickerView.frame  = CGRectMake(220, 495, 64, pickerView.frame.size.height);
//        [self pickerViewItem:noOfMealArray];
//    }
   
    
}
-(IBAction)doneForPicker:(id)sender{
    [pickerView removeFromSuperview];
}

-(IBAction)finishTimePicker:(id)sender{
    [dateView removeFromSuperview];
    [pickerView removeFromSuperview];
    startTimebool = FALSE;
    finishTimebool = TRUE;
   // if ((orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)) {
        timeView.frame = CGRectMake(420, 400, 199, timeView.frame.size.height);
        //dydtlbl.text = @"Select date";
        [mealScroll addSubview:timeView];
//    } else if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) {
//        timeView.frame = CGRectMake(220, 400, 199, timeView.frame.size.height);
//        //dydtlbl.text = @"Select date";
//        [mealScroll addSubview:timeView];
//    }
   
}



-(IBAction)doneForTimePicker:(id)sender{
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss zzzz"];
    NSString *inputDate1  = [NSString stringWithFormat:@"%@", timePicker.date];
    NSDate *inputDate = [inputFormatter dateFromString:inputDate1];
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:@"h:mm a"];
    self.dateString = [outputFormatter stringFromDate:inputDate];
    if (startTimebool) {
     startTimeLbl.text = self.dateString;
    }
    if (finishTimebool) {
        finishTimeLbl.text = self.dateString;
    }
    //dydtlbl.textColor = [UIColor blackColor];
    // 	NSLog(@"...date is...%@", self.dateString);
    [timeView removeFromSuperview];

}

-(IBAction)doneForDatePicker:(id)sender{
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss zzzz"];
    NSString *inputDate1  = [NSString stringWithFormat:@"%@", dtePicker.date];
    NSDate *inputDate = [inputFormatter dateFromString:inputDate1];
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:@"dd/MM/yyyy"];
    self.dateString = [outputFormatter stringFromDate:inputDate];
    dateLbl.text = self.dateString;
//dydtlbl.textColor = [UIColor blackColor];
// 	NSLog(@"...date is...%@", self.dateString);
    [dateView removeFromSuperview];

    }


-(void) pickerViewItem : (NSMutableArray *) getItems
{
	if (meal1Bybool) {
        //pickerView.frame  = CGRectMake(420, 35, 150, pickerView.frame.size.height);
        [mealScroll addSubview:pickerView];
    }
    if (meal2Bybool) {
        //pickerView.frame  = CGRectMake(420, 35, 150, pickerView.frame.size.height);
        [mealView addSubview:pickerView];
    }
 	
  	itemArray = [getItems copy];
 	[customPicker reloadAllComponents];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
 	return 1;
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
 	return [itemArray count];
}

- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (noOfmealbool)
    {
        return [itemArray objectAtIndex:row];
    }
     if (carriedBybool) {
        return [itemArray objectAtIndex:row];
    }
    if (foodsftyInchbool) {
        return [itemArray objectAtIndex:row];
    }
    return 0;
}

- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    if (noOfmealbool)
    {
        NSString *getCityName = [itemArray objectAtIndex:row];
        noOfMealLbl.text = getCityName;
       // self.getPickerString= [[itemArray objectAtIndex:row] objectForKey:getCityName];
       // [self getPickerData:self.getPickerString];
    }
	
     if (carriedBybool) {
        self.getPickerString = [itemArray objectAtIndex:row];
         if (meal1Bybool) {
             createdField.text = self.getPickerString;
         }
         if (meal2Bybool) {
             carriedOutFld.text = self.getPickerString;
         }
         
//        [self getPickerData:self.getPickerString];
    }
    if (foodsftyInchbool) {
        self.getPickerString = [itemArray objectAtIndex:row];
//        if (meal1Bybool) {
//            createdField.text = self.getPickerString;
//        }
        if (meal2Bybool) {
            foodSftyINchageFld.text = self.getPickerString;
        }
        
        //        [self getPickerData:self.getPickerString];
    }
}
//-(void) getPickerData : (NSString *) getStr
//{
//    //        NSLog(@"get str is %@", getStr);
//    citytextField.text = getStr;
//    dydtlbl.text  = getStr;
//    self.dateString = [NSString stringWithFormat:@"%@", getStr];
//    //dydtlbl.text = self.dateString;
//    dydtlbl.textColor = [UIColor blackColor];
//}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (databool) {
         return [dataArray count];
    }
    if (shftbool) {
        return [shiftArray count];
    }
    if (productbool) {
        return [productArray count];
    }
    if (classbool) {
        return [classArray count];
    }
    if (oalbool) {
        return [oalArray count];
    }
    if (etdbool) {
        return [etdArray count];
    }
    if (listbool) {
        return [listArray count];
    }
    if (unitbool) {
        return [unitArray count];
    }
    if (carriedBybool) {
        return [noOfMealArray count];
    }
    if (foodsftyInchbool) {
        return [noOfMealArray count];
    }
     
    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    if (tableView == dataTable) {
     UITableViewCell *cell = [dataTable dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
        cell.backgroundView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"white_block.png"]];
        //[cell setBackgroundView:[UIImageView alloc];];
        //cell.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"white_block.png"]];
                UILabel *txtLbl= [[UILabel alloc]init];
                txtLbl.frame = CGRectMake(07,10, 160, 22);
                txtLbl.font = [UIFont boldSystemFontOfSize:15];
                txtLbl.tag = 30;
                txtLbl.backgroundColor = [UIColor clearColor];
                [cell.contentView addSubview:txtLbl];
        
                UILabel *cntLbl= [[UILabel alloc]init];
                cntLbl.frame = CGRectMake(177,12, 20, 20);
                cntLbl.font = [UIFont boldSystemFontOfSize:12];
                cntLbl.backgroundColor = [UIColor redColor];
                cntLbl.textColor = [UIColor whiteColor];
                cntLbl.textAlignment = NSTextAlignmentCenter;
                cntLbl.shadowColor = [UIColor blackColor];
                cntLbl.layer.cornerRadius = 8;
                cntLbl.tag = 50;
                [cell.contentView addSubview:cntLbl];
    }
        
    UILabel *dptLbl = (UILabel *)[cell.contentView viewWithTag:50];
    if (indexPath.row==1) {
    dptLbl.text =[NSString stringWithFormat:@"%d",[listArray count]];
    }
    else{
        dptLbl.text = @"5";
    }
    UILabel *txtLbl = (UILabel *)[cell.contentView viewWithTag:30];
    txtLbl.text =  [dataArray objectAtIndex:indexPath.row];
    
    return cell;
    }
    if (tableView == listTable) {
       // listbool = FALSE;
        CustomCellViewController *cell = (CustomCellViewController *)[listTable dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil)
        {
            NSArray* nib = [[NSBundle mainBundle] loadNibNamed:@"CustomCellViewController" owner:self options:nil];
            cell =(CustomCellViewController *)[nib objectAtIndex:0];
        //UITableViewCell *cell = [listTable dequeueReusableCellWithIdentifier:CellIdentifier];
//        if (cell == nil) {
//            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
           // cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
           // cell.productLabl.highlightedTextColor = [UIColor whiteColor];
           /* UILabel *txtLbl= [[UILabel alloc]init];
            txtLbl.frame = CGRectMake(07,05,150, 22);
            txtLbl.font = [UIFont boldSystemFontOfSize:15];
            txtLbl.tag = 10;
            txtLbl.highlightedTextColor = [UIColor whiteColor];
            [cell.contentView addSubview:txtLbl];
            
            UILabel *tdateLbl= [[UILabel alloc]init];
            tdateLbl.frame = CGRectMake(520,05,80, 22);
            tdateLbl.font = [UIFont boldSystemFontOfSize:15];
            tdateLbl.tag = 40;
            tdateLbl.highlightedTextColor = [UIColor whiteColor];
            [cell.contentView addSubview:tdateLbl];
            
            UILabel *txtLbl2= [[UILabel alloc]init];
            txtLbl2.frame = CGRectMake(600,05,100, 22);
            txtLbl2.font = [UIFont fontWithName:@"Trebuchet-BoldItalic" size:15];
            txtLbl2.textColor = [UIColor colorWithRed:5.0f/255.0f green:165.0f/255.0f blue:10.0f/255.0f alpha:1];
            txtLbl2.tag = 20;
             txtLbl2.highlightedTextColor = [UIColor whiteColor];
            [cell.contentView addSubview:txtLbl2];
            //NSLog(@"FONT %@", [UIFont fontNamesForFamilyName:@"Trebuchet MS"]);
            
            UILabel *txtLbl3= [[UILabel alloc]init];
            txtLbl3.frame = CGRectMake(07,30, 500, 50);
            txtLbl3.font = [UIFont systemFontOfSize:13];
            txtLbl3.textColor = [UIColor lightGrayColor];
            txtLbl3.numberOfLines = 3;
            txtLbl3.tag = 30;
             txtLbl3.highlightedTextColor = [UIColor whiteColor];
            [cell.contentView addSubview:txtLbl3];*/
            
//            UILabel *cntLbl= [[UILabel alloc]init];
//            cntLbl.frame = CGRectMake(190,12, 20, 20);
//            cntLbl.font = [UIFont boldSystemFontOfSize:12];
//            cntLbl.backgroundColor = [UIColor grayColor];
//            cntLbl.textColor = [UIColor whiteColor];
//            cntLbl.textAlignment = UITextAlignmentCenter;
//            cntLbl.shadowColor = [UIColor blackColor];
//            cntLbl.layer.cornerRadius = 8;
//            cntLbl.tag = 50;
//            [cell.contentView addSubview:cntLbl];
        }
        cell.productLabl.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"Product"];
        cell.oalLabl.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"OAL"];
        cell.etdLabl.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"ETD"];
        cell.processLabl.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"Date"];
        cell.strtTimeLabl.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"StartingTime"];
        cell.strtTempLabl.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"StartingTemp"];
        cell.finshTimeLabl.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"FinishingTime"];
        cell.finshTempLabl.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"FinishingTemp"];
        cell.imag.image = [UIImage imageNamed:@""];
//        UILabel *tdtelbl = (UILabel *)[cell.contentView viewWithTag:40];
//        tdtelbl.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"Date"];
//        UILabel *txtPlbl = (UILabel *)[cell.contentView viewWithTag:20];
//        txtPlbl.text = @"Guest";
//        UILabel *dptLbl = (UILabel *)[cell.contentView viewWithTag:10];
//        dptLbl.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"CarriedOutBy"];
//        UILabel *txtLbl = (UILabel *)[cell.contentView viewWithTag:30];
//        txtLbl.text =  [[listArray objectAtIndex:indexPath.row] objectForKey:@"MealDicr"];
        
        return cell;
    }
    if (shftbool) {
        UITableViewCell *cell = [shiftTableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//            UILabel *nameLbl= [[UILabel alloc]init];
//            nameLbl.frame = CGRectMake(0, 44, 320, 01);
//            nameLbl.font = [UIFont boldSystemFontOfSize:12];
//            nameLbl.tag = 30;
//            nameLbl.backgroundColor = [UIColor lightGrayColor];
            //[cell.contentView addSubview:nameLbl];
         }
         cell.textLabel.text =  [shiftArray objectAtIndex:indexPath.row];
        
        return cell;
    }
    if (productbool) {
        int labelTag = 1;
        UITableViewCell *cell = [shiftTableView dequeueReusableCellWithIdentifier:CellIdentifier];
        UILabel *nameLbl = (UILabel *)[cell viewWithTag:labelTag];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            nameLbl= [[UILabel alloc]init];
            nameLbl.frame = CGRectMake(0, 44, 320, 01);
            nameLbl.font = [UIFont boldSystemFontOfSize:12];
            nameLbl.tag = labelTag;
            nameLbl.bounds = CGRectMake(0, 44, 320, 01);
            nameLbl.backgroundColor = [UIColor lightGrayColor];
            [cell.contentView addSubview:nameLbl];
        }
        
        cell.textLabel.text =  [productArray objectAtIndex:indexPath.row];
        
        return cell;
    }
    if (etdbool) {
        UITableViewCell *cell = [shiftTableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            UILabel *nameLbl= [[UILabel alloc]init];
            nameLbl.frame = CGRectMake(0, 44, 320, 01);
            nameLbl.font = [UIFont boldSystemFontOfSize:12];
            nameLbl.tag = 30;
            nameLbl.backgroundColor = [UIColor lightGrayColor];
            [cell.contentView addSubview:nameLbl];
        }
        cell.textLabel.text =  [etdArray objectAtIndex:indexPath.row];
        
        return cell;
    }
    if (classbool) {
        UITableViewCell *cell = [shiftTableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            UILabel *nameLbl= [[UILabel alloc]init];
            nameLbl.frame = CGRectMake(0, 44, 320, 01);
            nameLbl.font = [UIFont boldSystemFontOfSize:12];
            nameLbl.tag = 30;
            nameLbl.backgroundColor = [UIColor lightGrayColor];
            [cell.contentView addSubview:nameLbl];
        }
        cell.textLabel.text =  [classArray objectAtIndex:indexPath.row];
        
        return cell;
    }
    if (oalbool) {
        UITableViewCell *cell = [shiftTableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            UILabel *nameLbl= [[UILabel alloc]init];
            nameLbl.frame = CGRectMake(0, 44, 320, 01);
            nameLbl.font = [UIFont boldSystemFontOfSize:12];
            nameLbl.tag = 30;
            nameLbl.backgroundColor = [UIColor lightGrayColor];
            [cell.contentView addSubview:nameLbl];
        }
        cell.textLabel.text =  [oalArray objectAtIndex:indexPath.row];
        
        return cell;
    }
    if (unitbool) {
        UITableViewCell *cell = [shiftTableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            UILabel *nameLbl= [[UILabel alloc]init];
            nameLbl.frame = CGRectMake(0, 44, 320, 01);
            nameLbl.font = [UIFont boldSystemFontOfSize:12];
            nameLbl.tag = 30;
            nameLbl.backgroundColor = [UIColor lightGrayColor];
            [cell.contentView addSubview:nameLbl];
        }
        cell.textLabel.text =  [unitArray objectAtIndex:indexPath.row];
        
        return cell;
    }
    if (carriedBybool) {
        UITableViewCell *cell = [shiftTableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//            UILabel *nameLbl= [[UILabel alloc]init];
//            nameLbl.frame = CGRectMake(0, 44, 320, 01);
//            nameLbl.font = [UIFont boldSystemFontOfSize:12];
//            nameLbl.tag = 30;
//            nameLbl.backgroundColor = [UIColor lightGrayColor];
//            [cell.contentView addSubview:nameLbl];
        }
        cell.textLabel.text =  [noOfMealArray objectAtIndex:indexPath.row];
        
        return cell;
    }
    if (foodsftyInchbool) {
        UITableViewCell *cell = [shiftTableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//            UILabel *nameLbl= [[UILabel alloc]init];
//            nameLbl.frame = CGRectMake(0, 44, 320, 01);
//            nameLbl.font = [UIFont boldSystemFontOfSize:12];
//            nameLbl.tag = 30;
//            nameLbl.backgroundColor = [UIColor lightGrayColor];
//            [cell.contentView addSubview:nameLbl];
        }
        cell.textLabel.text =  [noOfMealArray objectAtIndex:indexPath.row];
        
        return cell;
    }
    return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (tableView==dataTable) {
    
        if (indexPath.row==0) {
            createdField.userInteractionEnabled = YES;
            btn1.userInteractionEnabled = YES;
            btn2.userInteractionEnabled = YES;
            btn3.userInteractionEnabled = YES;
            btn4.userInteractionEnabled = YES;
            btn5.userInteractionEnabled = YES;
            btn6.userInteractionEnabled = YES;
            btn7.userInteractionEnabled = YES;
            btn8.userInteractionEnabled = YES;
            btn9.userInteractionEnabled = YES;
            btn10.userInteractionEnabled = YES;
            ambtTempSlidr.userInteractionEnabled = YES;
            strtTempSlidr.userInteractionEnabled = YES;
            finishTempSlidr.userInteractionEnabled = YES;
            hotMealDishedView.userInteractionEnabled = YES;
            foodSftyInchrgField.userInteractionEnabled = YES;
            createdField.text = @"";
            dateLbl.text = @"";
            shiftLbl.text = @"";
            productLbl.text = @"";
            oalLbl.text = @"";
            etdLbl.text = @"";
            hotMealDishedView.text = @"";
            ambtTemptLbl.text = @"";
            classLbl.text = @"";
            finishTemptLbl.text = @"";
            finishTimeLbl.text = @"";
            noOfMealLbl.text = @"";
            startTimeLbl.text = @"";
            strtTemptLbl.text = @"";
            foodSftyInchrgField.text = @"";
            mainTitlLbl.text = [dataArray objectAtIndex:indexPath.row];
            [mealView removeFromSuperview];
            [listView removeFromSuperview];
//            if ((orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)) {
//                // Clear the current view and insert the orientation specific view.
//                mealDishingView.frame = CGRectMake(238, 42, 777, 662);
//                mealScroll.contentSize = CGSizeMake(700, 880);
//                [self.view addSubview:mealDishingView];
//            } else if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) {
//                // Clear the current view and insert the orientation specific view.
//                mealDishingView.frame = CGRectMake(238, 42, 530, 1024);
//                mealScroll.contentSize = CGSizeMake(525, 880);
//                [self.view addSubview:mealDishingView];
//            }
            meal1Bybool = TRUE;
            meal2Bybool = FALSE;
            mealDishingView.frame = CGRectMake(238, 42, 777, 662);
            mealScroll.contentSize = CGSizeMake(700, 880);
            [self.view addSubview:mealDishingView];
        }
//        else if (indexPath.row==1) {
//            ListViewController *list = [[ListViewController alloc]initWithNibName:@"ListViewController" bundle:nil];
//            [self.navigationController pushViewController:list animated:NO];
//        }
        else{
            mainTitlLbl.text = [dataArray objectAtIndex:indexPath.row];
            meal1Bybool = FALSE;
            meal2Bybool = TRUE;
            [mealDishingView removeFromSuperview];
            [listView removeFromSuperview];
             mealView.frame = CGRectMake(241, 42, 777, 680);
            //vm.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:mealView];
        }

    }
    if (tableView==dataTable2) {
        
        if (indexPath.row==0) {
            createdField.userInteractionEnabled = YES;
            btn1.userInteractionEnabled = YES;
            btn2.userInteractionEnabled = YES;
            btn3.userInteractionEnabled = YES;
            btn4.userInteractionEnabled = YES;
            btn5.userInteractionEnabled = YES;
            btn6.userInteractionEnabled = YES;
            btn7.userInteractionEnabled = YES;
            btn8.userInteractionEnabled = YES;
            btn9.userInteractionEnabled = YES;
            btn10.userInteractionEnabled = YES;
            ambtTempSlidr.userInteractionEnabled = YES;
            strtTempSlidr.userInteractionEnabled = YES;
            finishTempSlidr.userInteractionEnabled = YES;
            hotMealDishedView.userInteractionEnabled = YES;
            foodSftyInchrgField.userInteractionEnabled = YES;
            createdField.text = @"";
            dateLbl.text = @"";
            shiftLbl.text = @"";
            productLbl.text = @"";
            oalLbl.text = @"";
            etdLbl.text = @"";
            hotMealDishedView.text = @"";
            ambtTemptLbl.text = @"";
            classLbl.text = @"";
            finishTemptLbl.text = @"";
            finishTimeLbl.text = @"";
            noOfMealLbl.text = @"";
            startTimeLbl.text = @"";
            strtTemptLbl.text = @"";
            foodSftyInchrgField.text = @"";
            mainTitlLbl2.text = [dataArray objectAtIndex:indexPath.row];
//            if ((orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)) {
//                // Clear the current view and insert the orientation specific view.
//                mealDishingView.frame = CGRectMake(240, 44, 777, 662);
//                mealScroll.contentSize = CGSizeMake(700, 880);
//                [self.view addSubview:mealDishingView];
//            } else if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) {
//                // Clear the current view and insert the orientation specific view.
//                mealDishingView.frame = CGRectMake(240, 44, 530, 777);
//                mealScroll.contentSize = CGSizeMake(525, 880);
//                [self.view addSubview:mealDishingView];
//            }
            mealDishingView.frame = CGRectMake(238, 42, 777, 662);
            mealScroll.contentSize = CGSizeMake(700, 880);
            [self.view addSubview:mealDishingView];
        }
//        else if (indexPath.row==1) {
//            ListViewController *list = [[ListViewController alloc]initWithNibName:@"ListViewController" bundle:nil];
//            [self.navigationController pushViewController:list animated:NO];
//        }
        else{
            [mealDishingView removeFromSuperview];
//            UIView *vm = [[UIView alloc]initWithFrame:CGRectMake(250, 87, 774, 662)];
//            vm.backgroundColor = [UIColor whiteColor];
//            [self.view addSubview:vm];
        }
        
    }
    if (tableView==shiftTableView) {
    if (shftbool) {
        
        shiftLbl.text = [shiftArray objectAtIndex:indexPath.row];
         shiftFld.text = [shiftArray objectAtIndex:indexPath.row];
    }
    if (productbool) {
        productbool = FALSE;
        productLbl.text = [productArray objectAtIndex:indexPath.row];
        productFld.text = [productArray objectAtIndex:indexPath.row];
    }
    if (oalbool) {
        oalLbl.text = [oalArray objectAtIndex:indexPath.row];
        oalFld.text = [oalArray objectAtIndex:indexPath.row];
    }
    if (etdbool) {
        etdLbl.text = [etdArray objectAtIndex:indexPath.row];
        etdFld.text = [etdArray objectAtIndex:indexPath.row];
    }
    if (classbool) {
        classLbl.text = [classArray objectAtIndex:indexPath.row];
         classFld.text = [classArray objectAtIndex:indexPath.row];
    }
    if (unitbool) {
            
            unitFld.text = [unitArray objectAtIndex:indexPath.row];
    }
    if (carriedBybool) {
             carriedOutFld.text = [noOfMealArray objectAtIndex:indexPath.row];
    }
    if (foodsftyInchbool) {
             foodSftyINchageFld.text = [noOfMealArray objectAtIndex:indexPath.row];
        }
    }
    if (tableView==listTable) {
     if (listbool) {
         [listView removeFromSuperview];
        carriedOutFld.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"CarriedOutBy"];
        dateFld.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"Date"];
        shiftFld.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"Shift"];
        productFld.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"Product"];
        oalFld.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"OAL"];
        etdFld.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"ETD"];
        hotMealDishedView.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"MealDicr"];
        ambtTemptFld.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"AmbientTemp"];
        classFld.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"Class"];
        finshTempFld.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"FinishingTemp"];
        finshTimeFld.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"FinishingTime"];
        hotMealDshdFld.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"NoOfMeal"];
        strtTimeFld.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"StartingTime"];
        strtTempFld.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"StartingTime"];
        foodSftyINchageFld.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"FoodSafetyIncharge"];
         unitFld.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"Unit"];
        createdField.userInteractionEnabled = NO;
         btn1.userInteractionEnabled = NO;
         btn2.userInteractionEnabled = NO;
         btn3.userInteractionEnabled = NO;
         btn4.userInteractionEnabled = NO;
         btn5.userInteractionEnabled = NO;
         btn6.userInteractionEnabled = NO;
         btn7.userInteractionEnabled = NO;
         btn8.userInteractionEnabled = NO;
         btn9.userInteractionEnabled = NO;
         btn10.userInteractionEnabled = NO;
         ambtTempSlidr.userInteractionEnabled = NO;
         strtTempSlidr.userInteractionEnabled = NO;
         finishTempSlidr.userInteractionEnabled = NO;
        hotMealDishedView.userInteractionEnabled = NO;
        foodSftyInchrgField.userInteractionEnabled = NO;
          mealView.frame = CGRectMake(241, 42, 777, 680);
        //mealDishingView.frame = CGRectMake(238, 42, 774, 662);
         CATransition *transition = [CATransition animation];
         transition.duration = 0.5;
         transition.type = kCATransitionReveal; //choose your animation
         [mealView.layer addAnimation:transition forKey:nil];
        //mealScroll.contentSize = CGSizeMake(700, 880);
        [self.view addSubview:mealView];
    }
        
    }
    
    
    [shiftPopoverController dismissPopoverAnimated:YES];
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (listbool) {
        return 54;
    }
    return 44;
}

-(IBAction)addToDatabase
{
    
 	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	//NSLog(@"paths %@\n documentsDirectory %@",paths,documentsDirectory);
 	NSString *dbPath = [[NSString alloc] initWithString: [documentsDirectory stringByAppendingPathComponent:@"NewmealData.db"]];
 	returncode=sqlite3_open([dbPath UTF8String],&pdb);
	if(returncode==SQLITE_OK)
	{
 		NSLog(@"\ndatabase opened");
        sqlstatement="CREATE TABLE IF NOT EXISTS mealtable(Id INTEGER PRIMARY KEY,CarriedOutBy varchar,Date varchar,Shift varchar,AmbientTemp varchar,Product varchar,OAL varchar,Class varchar,ETD varchar,StartingTime varchar,StartingTemp varchar,FinishingTime varchar,FinishingTemp varchar,NoOfMeal varchar,MealDicr varchar,FoodSafetyIncharge varchar,Unit varchar)";
		/// this will open the table if already exists. else it will create the table with the same name and open
		returncode = sqlite3_exec(pdb,sqlstatement,NULL,NULL,&errormsg);
		if(returncode==SQLITE_OK)
		{
//            [self deleteCabFromDataBase];
//            for (int i=0; i<[resultArray count]; i++) {
                NSLog(@"TABLE EXIST/open");
                
                sqlstatement = "insert into mealtable(Id,CarriedOutBy,Date,Shift,AmbientTemp,Product,OAL,Class,ETD,StartingTime,StartingTemp,FinishingTime,FinishingTemp,NoOfMeal,MealDicr,FoodSafetyIncharge,Unit)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                static sqlite3_stmt *addStmt=nil;//this is the full statement tat want to execute
                if(sqlite3_prepare_v2(pdb, sqlstatement, -1, &addStmt, NULL) != SQLITE_OK)//this is the prepare statement adding requst to the addStmt
                {
                    NSLog(@"not able to prepare the statement ");
                    NSAssert1(0, @"Error while creating add statement. '%s'", sqlite3_errmsg(pdb));
                    
                }
                else
                {
                    
                    NSLog(@"statement prepared successfully");
                    int idr = arc4random()%100000;;
                        sqlite3_bind_int(addStmt, 1, idr);
                        sqlite3_bind_text(addStmt, 2,[carriedOutFld.text  UTF8String], -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(addStmt, 3,[dateFld.text  UTF8String], -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(addStmt, 4,[shiftFld.text UTF8String], -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(addStmt, 5,[ambtTemptFld.text  UTF8String], -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(addStmt, 6,[productFld.text  UTF8String], -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(addStmt, 7,[oalFld.text  UTF8String], -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(addStmt, 8,[classFld.text  UTF8String], -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(addStmt, 9,[etdFld.text  UTF8String], -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(addStmt, 10,[strtTimeFld.text  UTF8String], -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(addStmt, 11,[strtTempFld.text UTF8String], -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(addStmt, 12,[finshTimeFld.text  UTF8String], -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(addStmt, 13,[finshTempFld.text UTF8String], -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(addStmt, 14,[hotMealDshdFld.text  UTF8String], -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(addStmt, 15,[foodSftyINchageFld.text UTF8String], -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(addStmt, 16,[hotMealDishedView.text UTF8String], -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(addStmt, 17,[unitFld.text  UTF8String], -1, SQLITE_TRANSIENT);
//                    id fr5 = [[resultArray objectAtIndex:i] objectForKey:@"status"];
//                    NSString *frStr5 = [NSString stringWithFormat:@"%@",fr5];
//                    
//                    sqlite3_bind_text(addStmt, 17,[frStr5 UTF8String], -1, SQLITE_TRANSIENT);
//                    id fr6 = [[resultArray objectAtIndex:i] objectForKey:@"weekEnding"];
//                    NSString *frStr6 = [NSString stringWithFormat:@"%@",fr6];
//                    sqlite3_bind_text(addStmt, 18,[frStr6 UTF8String], -1, SQLITE_TRANSIENT);
                    
                    if(SQLITE_DONE != sqlite3_step(addStmt))// THIS IS THE STATEMENT TO EXECUTE THE QUERY
                    {
                        NSLog(@"\nnot able to insert");
                    }
                    else
                    {
                        NSLog(@"insert into table");
                    }
                //}
            }
 		}
		else
			NSLog(@"not able to create/open the table");
 	}
	else
 		NSLog(@"\ndatabase not  opened");
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"INFO" message:@"Saved Successfully" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    NSLog(@"added successfully");
	
}


- (void)readFromDatabse {
 	NSLog(@"in will appear");
	array = [NSMutableArray new];
//  	sqlite3 *pdb;
//	char *sqlstatement;
 	NSError *error;
 	static sqlite3_stmt *addStmt=nil;
 	NSFileManager *fileManager=[NSFileManager defaultManager];
 	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory , NSUserDomainMask, YES);
	NSString *documentsDir = [paths objectAtIndex:0];
	NSString *dbPath = [documentsDir stringByAppendingPathComponent:@"NewmealData.db"];
 	BOOL success =[fileManager fileExistsAtPath:dbPath];
	if(success)
		NSLog(@"\ndatabase is exist in the path");
	else
	{
		NSLog(@"\ndatabase not able to open");
		NSString *defaultDBPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"NewmealData.db"];
		success = [fileManager copyItemAtPath:defaultDBPath toPath:dbPath error:&error];
		if (!success)
		{
			NSLog(@"\ndatabase not able to create -error");
			NSAssert1(0, @"Failed to create writable database file with message '%@'.", [error localizedDescription]);
 		}
		else
			NSLog(@"\ndatabase is added to doc dir--- database.db");
 	}
  	 returncode = sqlite3_open([dbPath UTF8String],&pdb);
	if(returncode==SQLITE_OK)
	{
		NSLog(@"db open");
	}
    sqlstatement="select Id,CarriedOutBy,Date,Shift,AmbientTemp,Product,OAL,Class,ETD,StartingTime,StartingTemp,FinishingTime,FinishingTemp,NoOfMeal,MealDicr,FoodSafetyIncharge,Unit from mealtable";
    addStmt=nil;
    if(sqlite3_prepare_v2(pdb, sqlstatement, -1, &addStmt, NULL) != SQLITE_OK)
    {
        NSLog(@"inside prepare statement ");
        NSAssert1(0, @"Error while creating add statement. '%s'", sqlite3_errmsg(pdb));
    }
    else
    {
        //sqlite3_bind_int(addStmt,1,i);
        while(sqlite3_step(addStmt) == SQLITE_ROW)
        {
            @try {
                dict = [NSMutableDictionary new];
                [dict setObject:[NSString stringWithFormat:@"%d",sqlite3_column_int(addStmt,0)] forKey:@"Id"];
				[dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt,1)] forKey:@"CarriedOutBy"];
				NSLog(@"detailviewdata22");
				[dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt, 2)] forKey:@"Date"];
				NSLog(@"detailviewdata23");
				[dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt, 3)] forKey:@"Shift"];
				NSLog(@"detailviewdata24");
				//[dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt, 3)] forKey:@"Id"];
                //
                [dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt,4)] forKey:@"AmbientTemp"];
				NSLog(@"detailviewdata22");
				[dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt, 5)] forKey:@"Product"];
				NSLog(@"detailviewdata23");
				[dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt, 6)] forKey:@"OAL"];
				NSLog(@"detailviewdata24");
				[dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt, 7)] forKey:@"Class"];
                [dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt,8)] forKey:@"ETD"];
				NSLog(@"detailviewdata22");
				[dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt, 9)] forKey:@"StartingTime"];
				//NSLog(@"detailviewdata23");
				[dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt, 10)] forKey:@"StartingTemp"];
				//NSLog(@"detailviewdata24");
				[dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt, 11)] forKey:@"FinishingTime"];
                [dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt,12)] forKey:@"FinishingTemp"];
				NSLog(@"detailviewdata22");
				[dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt, 13)] forKey:@"NoOfMeal"];
				NSLog(@"detailviewdata23");
				[dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt, 14)] forKey:@"FoodSafetyIncharge"];
				NSLog(@"detailviewdata24");
				[dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt, 15)] forKey:@"MealDicr"];
                [dict setObject:[NSString stringWithUTF8String:(char *)sqlite3_column_text(addStmt, 16)] forKey:@"Unit"];
                [array addObject:dict];
            }
            @catch (NSException *exception) {
                NSLog(@"%@",exception);
            }
            @finally {
                NSLog(@"Finally");
            }
        }
    }
 	NSLog(@"RAAAAARRRRAyy....%@",array);
    listArray = [array copy];
        
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    [mealScroll setContentOffset:CGPointMake(0, 0) animated:YES];
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    
    CGRect rect=textField.frame;
    [mealScroll setContentOffset:CGPointMake(0, rect.origin.y-140) animated:YES];
}

-(void)textFieldDidEndEditing:(UITextField *)textField{
//    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
//    [numberFormatter setPositiveFormat:@"###0.##"];
//    NSString *formattedNumberString = [numberFormatter stringFromNumber:@122344.4563];
//    NSLog(@"formattedNumberString: %@", formattedNumberString);
//    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
//    [inputFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss zzzz"];
//    NSString *inputDate1  = [NSString stringWithFormat:@"%@", dateFld.text];
//    NSDate *inputDate = [inputFormatter dateFromString:inputDate1];
//    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
//    [outputFormatter setDateFormat:@"dd/MM/yyyy"];
//    self.dateString = [outputFormatter stringFromDate:inputDate];
//    NSLog(@"date is..%@",[outputFormatter stringFromDate:inputDate]);
//    dateFld.text = self.dateString;
    
//    if ((dateFld.text.length == 2)&&(dateFld.text.length == 5)){
//        //Handle backspace being pressed
//         
//            dateFld.text = [dateFld.text stringByAppendingString:@"/"];
// }
    if (textField==ambtTemptFld) {
        ambtTemptFld.text = [ambtTemptFld.text stringByAppendingString:@"°C"];
    }
    if (textField==strtTempFld) {
        strtTempFld.text = [strtTempFld.text stringByAppendingString:@"°C"];
    }
    if (textField==finshTempFld) {
        finshTempFld.text = [finshTempFld.text stringByAppendingString:@"°C"];
    }
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    //Format Date of Birth YYYY-MM-DD
    if(textField == dateFld)
    {
        if ((dateFld.text.length == 4)||(dateFld.text.length == 7))
            //Handle backspace being pressed
            if (![string isEqualToString:@""])
                dateFld.text = [dateFld.text stringByAppendingString:@"-"];
        return !([textField.text length]>9 && [string length] > range.length);
    }
    else
        return YES;
    
}


- (void)keyboardWillBeHidden:(NSNotification*)aNotification {
    UIEdgeInsets contentInsets = UIEdgeInsetsZero;
    mealScroll.contentInset = contentInsets;
    mealScroll.scrollIndicatorInsets = contentInsets;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if (textField == dateFld) {
        dateclickBool = TRUE;
        ambtTempclickBool= FALSE;
        strtTimeclickBool= FALSE;
        strtTempclickBool= FALSE;
        endTempClickBool= FALSE;
        endTimeClickBool= FALSE;
        hotMealClickBool= FALSE;
        //return NO;
        UIView* dummyView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
        textField.inputView = dummyView;
    }
    if (textField==ambtTemptFld) {
        dateclickBool = FALSE;
        ambtTempclickBool= TRUE;
        strtTimeclickBool= FALSE;
        strtTempclickBool= FALSE;
        endTempClickBool= FALSE;
        endTimeClickBool= FALSE;
        hotMealClickBool= FALSE;
        UIView* dummyView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
        textField.inputView = dummyView;
    }
    if (textField == strtTempFld) {
        dateclickBool = FALSE;
        ambtTempclickBool= FALSE;
        strtTimeclickBool= FALSE;
        strtTempclickBool= TRUE;
        endTempClickBool= FALSE;
        endTimeClickBool= FALSE;
        hotMealClickBool= FALSE;
        UIView* dummyView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
        textField.inputView = dummyView;
    }
    if (textField == strtTimeFld) {
        dateclickBool = FALSE;
        ambtTempclickBool= FALSE;
        strtTimeclickBool= TRUE;
        strtTempclickBool= FALSE;
        endTempClickBool= FALSE;
        endTimeClickBool= FALSE;
        hotMealClickBool= FALSE;
        UIView* dummyView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
        textField.inputView = dummyView;
    }
    if (textField == finshTimeFld) {
        dateclickBool = FALSE;
        ambtTempclickBool= FALSE;
        strtTimeclickBool= FALSE;
        strtTempclickBool= FALSE;
        endTempClickBool= FALSE;
        endTimeClickBool= TRUE;
        hotMealClickBool= FALSE;
        UIView* dummyView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
        textField.inputView = dummyView;
    }
    if (textField == finshTempFld) {
        dateclickBool = FALSE;
        ambtTempclickBool= FALSE;
        strtTimeclickBool= FALSE;
        strtTempclickBool= FALSE;
        endTempClickBool= TRUE;
        endTimeClickBool= FALSE;
        hotMealClickBool= FALSE;
        UIView* dummyView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
        textField.inputView = dummyView;
    }
    if (textField == hotMealDshdFld) {
        dateclickBool = FALSE;
        ambtTempclickBool= FALSE;
        strtTimeclickBool= FALSE;
        strtTempclickBool= FALSE;
        endTempClickBool= FALSE;
        endTimeClickBool= FALSE;
        hotMealClickBool= TRUE;
        UIView* dummyView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
        textField.inputView = dummyView;
    }
      
    return YES;
}



- (IBAction) button1:(id)sender{
     if (dateclickBool) {
         if ([dateFld.text length]<=9) {
             if ((dateFld.text.length == 2)||(dateFld.text.length == 5)){
                 //Handle backspace being pressed
                 
                 dateFld.text = [dateFld.text stringByAppendingString:@"/"];
                 dateFld.text=[NSString stringWithFormat:@"%@1",dateFld.text];
             }
             else{
             dateFld.text=[NSString stringWithFormat:@"%@1",dateFld.text];
         }
         }
        //dateFld.text=[NSString stringWithFormat:@"%@1",dateFld.text];
    }
    if (ambtTempclickBool) {
        if ([ambtTemptFld.text length]<=5) {
         ambtTemptFld.text=[NSString stringWithFormat:@"%@1",ambtTemptFld.text];
        }
    }
    if (strtTimeclickBool) {
        if ([strtTimeFld.text length]==0) {
            strtTimeFld.text=[NSString stringWithFormat:@"%@1",strtTimeFld.text];
         }
        else if([strtTimeFld.text length]==1){
            
            strtTimeFld.text=[NSString stringWithFormat:@"%@1",strtTimeFld.text];
            strtTimeFld.text = [strtTimeFld.text stringByAppendingString:@":"];

        }
        else if([strtTimeFld.text length]>1&&[strtTimeFld.text length]<5){
            //strtTimeFld.text = [strtTimeFld.text stringByAppendingString:@":"];
            strtTimeFld.text=[NSString stringWithFormat:@"%@1",strtTimeFld.text];
            
        }
    }
    if (strtTempclickBool) {
        if ([strtTempFld.text length]<=5) {
            strtTempFld.text=[NSString stringWithFormat:@"%@1",strtTempFld.text];

        }
    }
    if (endTimeClickBool) {
        if ([finshTimeFld.text length]==0) {
            finshTimeFld.text=[NSString stringWithFormat:@"%@1",finshTimeFld.text];
        }
        else if([finshTimeFld.text length]==1){
            
            finshTimeFld.text=[NSString stringWithFormat:@"%@1",finshTimeFld.text];
            finshTimeFld.text = [finshTimeFld.text stringByAppendingString:@":"];
            
        }
        else if([finshTimeFld.text length]>1&&[finshTimeFld.text length]<5){
             finshTimeFld.text=[NSString stringWithFormat:@"%@1",finshTimeFld.text];
            
        }
        //finshTimeFld.text=[NSString stringWithFormat:@"%@1",finshTimeFld.text];
    }
    if (endTempClickBool) {
        if ([finshTempFld.text length]<=5) {
        finshTempFld.text=[NSString stringWithFormat:@"%@1",finshTempFld.text];
        }
    }
    if (hotMealClickBool) {
        hotMealDshdFld.text=[NSString stringWithFormat:@"%@1",hotMealDshdFld.text];
    }
    //display.text=[NSString stringWithFormat:@"%@1",display.text];
}
- (IBAction) button2:(id)sender{
    if (dateclickBool) {
         if ([dateFld.text length]<=9) {
             if ((dateFld.text.length == 2)||(dateFld.text.length == 5)){
                 //Handle backspace being pressed
                 
                 dateFld.text = [dateFld.text stringByAppendingString:@"/"];
                 dateFld.text=[NSString stringWithFormat:@"%@2",dateFld.text];
             }
             else{
        dateFld.text=[NSString stringWithFormat:@"%@2",dateFld.text];
         }
         }
    }
    if (ambtTempclickBool) {
        if ([ambtTemptFld.text length]<=5) {
            ambtTemptFld.text=[NSString stringWithFormat:@"%@2",ambtTemptFld.text];
        }
    }
    if (strtTimeclickBool) {
        if ([strtTimeFld.text length]==0) {
            strtTimeFld.text=[NSString stringWithFormat:@"%@2",strtTimeFld.text];
        }
        else if([strtTimeFld.text length]==1){
            
            strtTimeFld.text=[NSString stringWithFormat:@"%@2",strtTimeFld.text];
            strtTimeFld.text = [strtTimeFld.text stringByAppendingString:@":"];
            
        }
        else if([strtTimeFld.text length]>1&&[strtTimeFld.text length]<5){
            //strtTimeFld.text = [strtTimeFld.text stringByAppendingString:@":"];
            strtTimeFld.text=[NSString stringWithFormat:@"%@2",strtTimeFld.text];
            
        }
    }
    if (strtTempclickBool) {
        if ([strtTempFld.text length]<=5) {
            strtTempFld.text=[NSString stringWithFormat:@"%@2",strtTempFld.text];
            
        }    }
    if (endTimeClickBool) {
        if ([finshTimeFld.text length]==0) {
            finshTimeFld.text=[NSString stringWithFormat:@"%@2",finshTimeFld.text];
        }
        else if([finshTimeFld.text length]==1){
            
            finshTimeFld.text=[NSString stringWithFormat:@"%@2",finshTimeFld.text];
            finshTimeFld.text = [finshTimeFld.text stringByAppendingString:@":"];
            
        }
        else if([finshTimeFld.text length]>1&&[finshTimeFld.text length]<5){
            finshTimeFld.text=[NSString stringWithFormat:@"%@2",finshTimeFld.text];
            
        }
    }
    if (endTempClickBool) {
        if ([finshTempFld.text length]<=5) {
            finshTempFld.text=[NSString stringWithFormat:@"%@2",finshTempFld.text];
        }    }
    if (hotMealClickBool) {
        hotMealDshdFld.text=[NSString stringWithFormat:@"%@2",hotMealDshdFld.text];
    }
}
- (IBAction) button3:(id)sender{
    if (dateclickBool) {
         if ([dateFld.text length]<=9) {
             if ((dateFld.text.length == 2)||(dateFld.text.length == 5)){
                 //Handle backspace being pressed
                 
                 dateFld.text = [dateFld.text stringByAppendingString:@"/"];
                 dateFld.text=[NSString stringWithFormat:@"%@3",dateFld.text];
             }
             else{
        dateFld.text=[NSString stringWithFormat:@"%@3",dateFld.text];
         }
         }
    }
    if (ambtTempclickBool) {
        if ([ambtTemptFld.text length]<=5) {
            ambtTemptFld.text=[NSString stringWithFormat:@"%@3",ambtTemptFld.text];
        }    }
    if (strtTimeclickBool) {
        if([strtTimeFld.text length]==1){
            
            strtTimeFld.text=[NSString stringWithFormat:@"%@3",strtTimeFld.text];
            strtTimeFld.text = [strtTimeFld.text stringByAppendingString:@":"];
            
        }
        else if([strtTimeFld.text length]>1&&[strtTimeFld.text length]<5){
            //strtTimeFld.text = [strtTimeFld.text stringByAppendingString:@":"];
            strtTimeFld.text=[NSString stringWithFormat:@"%@3",strtTimeFld.text];
            
        }
    }
    if (strtTempclickBool) {
        if ([strtTempFld.text length]<=5) {
            strtTempFld.text=[NSString stringWithFormat:@"%@3",strtTempFld.text];
            
        }    }
    if (endTimeClickBool) {
         if([finshTimeFld.text length]==1){
            
            finshTimeFld.text=[NSString stringWithFormat:@"%@3",finshTimeFld.text];
            finshTimeFld.text = [finshTimeFld.text stringByAppendingString:@":"];
            
        }
        else if([finshTimeFld.text length]>1&&[finshTimeFld.text length]<5){
            finshTimeFld.text=[NSString stringWithFormat:@"%@3",finshTimeFld.text];
            
        }
    }
    if (endTempClickBool) {
        if ([finshTempFld.text length]<=5) {
            finshTempFld.text=[NSString stringWithFormat:@"%@3",finshTempFld.text];
        }    }
    if (hotMealClickBool) {
        hotMealDshdFld.text=[NSString stringWithFormat:@"%@3",hotMealDshdFld.text];
    }
}
- (IBAction) button4:(id)sender{
    if (dateclickBool) {
         if ([dateFld.text length]<=9) {
             if ((dateFld.text.length == 2)||(dateFld.text.length == 5)){
                 //Handle backspace being pressed
                 
                 dateFld.text = [dateFld.text stringByAppendingString:@"/"];
                 dateFld.text=[NSString stringWithFormat:@"%@4",dateFld.text];
             }
             else{
        dateFld.text=[NSString stringWithFormat:@"%@4",dateFld.text];
         }
         }
    }
    if (ambtTempclickBool) {
        if ([ambtTemptFld.text length]<=5) {
            ambtTemptFld.text=[NSString stringWithFormat:@"%@4",ambtTemptFld.text];
        }    }
    if (strtTimeclickBool) {
        if([strtTimeFld.text length]>2&&[strtTimeFld.text length]<5){
            //strtTimeFld.text = [strtTimeFld.text stringByAppendingString:@":"];
            strtTimeFld.text=[NSString stringWithFormat:@"%@4",strtTimeFld.text];
            
        }    }
    if (strtTempclickBool) {
        if ([strtTempFld.text length]<=5) {
            strtTempFld.text=[NSString stringWithFormat:@"%@4",strtTempFld.text];
            
        }    }
    if (endTimeClickBool) {
         if([finshTimeFld.text length]>2&&[finshTimeFld.text length]<5){
            finshTimeFld.text=[NSString stringWithFormat:@"%@4",finshTimeFld.text];
            
        }
    }
    if (endTempClickBool) {
        if ([finshTempFld.text length]<=5) {
            finshTempFld.text=[NSString stringWithFormat:@"%@4",finshTempFld.text];
        }    }
    if (hotMealClickBool) {
        hotMealDshdFld.text=[NSString stringWithFormat:@"%@4",hotMealDshdFld.text];
    }
}
- (IBAction) button5:(id)sender{
    if (dateclickBool) {
        if ([dateFld.text length]<=9) {
             if ((dateFld.text.length == 2)||(dateFld.text.length == 5)){
                 //Handle backspace being pressed
                 
                 dateFld.text = [dateFld.text stringByAppendingString:@"/"];
                 dateFld.text=[NSString stringWithFormat:@"%@5",dateFld.text];
             }
             else{
        dateFld.text=[NSString stringWithFormat:@"%@5",dateFld.text];
         }
         }
    }
    if (ambtTempclickBool) {
        if ([ambtTemptFld.text length]<=5) {
            ambtTemptFld.text=[NSString stringWithFormat:@"%@5",ambtTemptFld.text];
        }    }
    if (strtTimeclickBool) {
        if([strtTimeFld.text length]>2&&[strtTimeFld.text length]<5){
            //strtTimeFld.text = [strtTimeFld.text stringByAppendingString:@":"];
            strtTimeFld.text=[NSString stringWithFormat:@"%@5",strtTimeFld.text];
            
        }    }
    if (strtTempclickBool) {
        if ([strtTempFld.text length]<=5) {
            strtTempFld.text=[NSString stringWithFormat:@"%@5",strtTempFld.text];
            
        }    }
    if (endTimeClickBool) {
        if([finshTimeFld.text length]>2&&[finshTimeFld.text length]<5){
            finshTimeFld.text=[NSString stringWithFormat:@"%@5",finshTimeFld.text];
            
        }
    }
    if (endTempClickBool) {
        if ([finshTempFld.text length]<=5) {
            finshTempFld.text=[NSString stringWithFormat:@"%@5",finshTempFld.text];
        }    }
    if (hotMealClickBool) {
        hotMealDshdFld.text=[NSString stringWithFormat:@"%@5",hotMealDshdFld.text];
    }
}
- (IBAction) button6:(id)sender{
    if (dateclickBool) {
         if ([dateFld.text length]<=9) {
             if ((dateFld.text.length == 2)||(dateFld.text.length == 5)){
                 //Handle backspace being pressed
                 
                 dateFld.text = [dateFld.text stringByAppendingString:@"/"];
                 dateFld.text=[NSString stringWithFormat:@"%@6",dateFld.text];
             }
             else{
        dateFld.text=[NSString stringWithFormat:@"%@6",dateFld.text];
         }
         }
    }
    if (ambtTempclickBool) {
        if ([ambtTemptFld.text length]<=5) {
            ambtTemptFld.text=[NSString stringWithFormat:@"%@6",ambtTemptFld.text];
        }    }
    if (strtTimeclickBool) {
        if([strtTimeFld.text length]>3&&[strtTimeFld.text length]<5){
            //strtTimeFld.text = [strtTimeFld.text stringByAppendingString:@":"];
            strtTimeFld.text=[NSString stringWithFormat:@"%@6",strtTimeFld.text];
            
        }    }     
    if (strtTempclickBool) {
        if ([strtTempFld.text length]<=5) {
            strtTempFld.text=[NSString stringWithFormat:@"%@6",strtTempFld.text];
            
        }    }
    if (endTimeClickBool) {
         if([finshTimeFld.text length]>3&&[finshTimeFld.text length]<5){
            finshTimeFld.text=[NSString stringWithFormat:@"%@6",finshTimeFld.text];
            
        }
    }
    if (endTempClickBool) {
        if ([finshTempFld.text length]<=5) {
            finshTempFld.text=[NSString stringWithFormat:@"%@6",finshTempFld.text];
        }    }
    if (hotMealClickBool) {
        hotMealDshdFld.text=[NSString stringWithFormat:@"%@6",hotMealDshdFld.text];
    }
}
- (IBAction) button7:(id)sender{
    if (dateclickBool) {
         if ([dateFld.text length]<=9) {
             if ((dateFld.text.length == 2)||(dateFld.text.length == 5)){
                 //Handle backspace being pressed
                 
                 dateFld.text = [dateFld.text stringByAppendingString:@"/"];
                 dateFld.text=[NSString stringWithFormat:@"%@7",dateFld.text];
             }
             else{
        dateFld.text=[NSString stringWithFormat:@"%@7",dateFld.text];
         }
         }
    }
    if (ambtTempclickBool) {
        if ([ambtTemptFld.text length]<=5) {
            ambtTemptFld.text=[NSString stringWithFormat:@"%@7",ambtTemptFld.text];
        }    }
    if (strtTimeclickBool) {
        if([strtTimeFld.text length]>3&&[strtTimeFld.text length]<5){
            //strtTimeFld.text = [strtTimeFld.text stringByAppendingString:@":"];
            strtTimeFld.text=[NSString stringWithFormat:@"%@7",strtTimeFld.text];
            
        }    }
    if (strtTempclickBool) {
        if ([strtTempFld.text length]<=5) {
            strtTempFld.text=[NSString stringWithFormat:@"%@7",strtTempFld.text];
            
        }    }
    if (endTimeClickBool) {
        if([finshTimeFld.text length]>3&&[finshTimeFld.text length]<5){
            finshTimeFld.text=[NSString stringWithFormat:@"%@7",finshTimeFld.text];
            
        }
    }
    if (endTempClickBool) {
        if ([finshTempFld.text length]<=5) {
            finshTempFld.text=[NSString stringWithFormat:@"%@7",finshTempFld.text];
        }    }
    if (hotMealClickBool) {
        hotMealDshdFld.text=[NSString stringWithFormat:@"%@7",hotMealDshdFld.text];
    }
}
- (IBAction) button8:(id)sender{
    if (dateclickBool) {
         if ([dateFld.text length]<=9) {
             if ((dateFld.text.length == 2)||(dateFld.text.length == 5)){
                 //Handle backspace being pressed
                 
                 dateFld.text = [dateFld.text stringByAppendingString:@"/"];
                 dateFld.text=[NSString stringWithFormat:@"%@8",dateFld.text];
             }
             else{
        dateFld.text=[NSString stringWithFormat:@"%@8",dateFld.text];
         }
         }
    }
    if (ambtTempclickBool) {
        if ([ambtTemptFld.text length]<=5) {
            ambtTemptFld.text=[NSString stringWithFormat:@"%@8",ambtTemptFld.text];
        }    }
    if (strtTimeclickBool) {
        if([strtTimeFld.text length]>3&&[strtTimeFld.text length]<5){
            //strtTimeFld.text = [strtTimeFld.text stringByAppendingString:@":"];
            strtTimeFld.text=[NSString stringWithFormat:@"%@8",strtTimeFld.text];
            
        }    }
    if (strtTempclickBool) {
        if ([strtTempFld.text length]<=5) {
            strtTempFld.text=[NSString stringWithFormat:@"%@8",strtTempFld.text];
            
        }    }
    if (endTimeClickBool) {
         if([finshTimeFld.text length]>3&&[finshTimeFld.text length]<5){
            finshTimeFld.text=[NSString stringWithFormat:@"%@8",finshTimeFld.text];
            
        }
    }
    if (endTempClickBool) {
        if ([finshTempFld.text length]<=5) {
            finshTempFld.text=[NSString stringWithFormat:@"%@8",finshTempFld.text];
        }    }
    if (hotMealClickBool) {
        hotMealDshdFld.text=[NSString stringWithFormat:@"%@8",hotMealDshdFld.text];
    }
}
- (IBAction) button9:(id)sender{
    if (dateclickBool) {
         if ([dateFld.text length]<=9) {
             if ((dateFld.text.length == 2)||(dateFld.text.length == 5)){
                 //Handle backspace being pressed
                 
                 dateFld.text = [dateFld.text stringByAppendingString:@"/"];
                 dateFld.text=[NSString stringWithFormat:@"%@9",dateFld.text];
             }
             else{
        dateFld.text=[NSString stringWithFormat:@"%@9",dateFld.text];
         }
         }
    }
    if (ambtTempclickBool) {
        if ([ambtTemptFld.text length]<=5) {
            ambtTemptFld.text=[NSString stringWithFormat:@"%@9",ambtTemptFld.text];
        }    }
    if (strtTimeclickBool) {
        if([strtTimeFld.text length]>3&&[strtTimeFld.text length]<5){
            //strtTimeFld.text = [strtTimeFld.text stringByAppendingString:@":"];
            strtTimeFld.text=[NSString stringWithFormat:@"%@9",strtTimeFld.text];
            
        }    }
    if (strtTempclickBool) {
        if ([strtTempFld.text length]<=5) {
            strtTempFld.text=[NSString stringWithFormat:@"%@9",strtTempFld.text];
            
        }    }
    if (endTimeClickBool) {
         if([finshTimeFld.text length]>3&&[finshTimeFld.text length]<5){
            finshTimeFld.text=[NSString stringWithFormat:@"%@9",finshTimeFld.text];
            
        }
    }
    if (endTempClickBool) {
        if ([finshTempFld.text length]<=5) {
            finshTempFld.text=[NSString stringWithFormat:@"%@9",finshTempFld.text];
        }    }
    if (hotMealClickBool) {
        hotMealDshdFld.text=[NSString stringWithFormat:@"%@9",hotMealDshdFld.text];
    }
}
- (IBAction) button0:(id)sender{
    
if (dateclickBool) {
     if ([dateFld.text length]<=9) {
         if ((dateFld.text.length == 2)||(dateFld.text.length == 5)){
             //Handle backspace being pressed
             
             dateFld.text = [dateFld.text stringByAppendingString:@"/"];
             dateFld.text=[NSString stringWithFormat:@"%@0",dateFld.text];
         }
         else{
    dateFld.text=[NSString stringWithFormat:@"%@0",dateFld.text];
     }
     }
}
if (ambtTempclickBool) {
    if ([ambtTemptFld.text length]<=5) {
        ambtTemptFld.text=[NSString stringWithFormat:@"%@0",ambtTemptFld.text];
    }}
if (strtTimeclickBool) {
    if ([strtTimeFld.text length]==0) {
        strtTimeFld.text=[NSString stringWithFormat:@"%@0",strtTimeFld.text];
    }
    else if([strtTimeFld.text length]==1){
        
        strtTimeFld.text=[NSString stringWithFormat:@"%@0",strtTimeFld.text];
        strtTimeFld.text = [strtTimeFld.text stringByAppendingString:@":"];
        
    }
    else if([strtTimeFld.text length]>1&&[strtTimeFld.text length]<5){
        //strtTimeFld.text = [strtTimeFld.text stringByAppendingString:@":"];
        strtTimeFld.text=[NSString stringWithFormat:@"%@0",strtTimeFld.text];
        
    }
}
if (strtTempclickBool) {
    if ([strtTempFld.text length]<=5) {
        strtTempFld.text=[NSString stringWithFormat:@"%@0",strtTempFld.text];
        
    }}
if (endTimeClickBool) {
    if ([finshTimeFld.text length]==0) {
        finshTimeFld.text=[NSString stringWithFormat:@"%@0",finshTimeFld.text];
    }
    else if([finshTimeFld.text length]==1){
        
        finshTimeFld.text=[NSString stringWithFormat:@"%@0",finshTimeFld.text];
        finshTimeFld.text = [finshTimeFld.text stringByAppendingString:@":"];
        
    }
    else if([finshTimeFld.text length]>1&&[finshTimeFld.text length]<5){
        finshTimeFld.text=[NSString stringWithFormat:@"%@0",finshTimeFld.text];
        
    }
}
if (endTempClickBool) {
    if ([finshTempFld.text length]<=5) {
        finshTempFld.text=[NSString stringWithFormat:@"%@0",finshTempFld.text];
    }}
if (hotMealClickBool) {
    hotMealDshdFld.text=[NSString stringWithFormat:@"%@0",hotMealDshdFld.text];
}
}
- (IBAction) clearButton:(id)sender{
    if (dateclickBool) {
        dateFld.text=@"";
    }
    if (ambtTempclickBool) {
        ambtTemptFld.text=@"";
    }
    if (strtTimeclickBool) {
        strtTimeFld.text=@"";
    }
    if (strtTempclickBool) {
        strtTempFld.text=@"";
    }
    if (endTimeClickBool) {
        finshTimeFld.text=@"";
    }
    if (endTempClickBool) {
        finshTempFld.text=@"";
    }
    if (hotMealClickBool) {
        hotMealDshdFld.text=@"";
    }
}
- (IBAction) dotButton:(id)sender{
    if (dateclickBool) {
        //dateFld.text=[NSString stringWithFormat:@"%@.",dateFld.text];
    }
    if (ambtTempclickBool) {
        if ([ambtTemptFld.text length]<=5) {
            ambtTemptFld.text=[NSString stringWithFormat:@"%@.",ambtTemptFld.text];
        }    }
    if (strtTimeclickBool) {
        //strtTimeFld.text=[NSString stringWithFormat:@"%@.",strtTimeFld.text];
    }
    if (strtTempclickBool) {
        if ([strtTempFld.text length]<=5) {
            strtTempFld.text=[NSString stringWithFormat:@"%@.",strtTempFld.text];
            
        }    }
    if (endTimeClickBool) {
        //finshTimeFld.text=[NSString stringWithFormat:@"%@.",finshTimeFld.text];
    }
    if (endTempClickBool) {
        if ([finshTempFld.text length]<=5) {
            finshTempFld.text=[NSString stringWithFormat:@"%@.",finshTempFld.text];
        }    }
    if (hotMealClickBool) {
       // hotMealDshdFld.text=[NSString stringWithFormat:@"%@.",hotMealDshdFld.text];
    }
}
- (IBAction) buttonNext:(id)sender{
    if ([dateFld isFirstResponder]==YES) {
           [ambtTemptFld becomeFirstResponder];
     }
    else if ([ambtTemptFld isFirstResponder]==YES) {
         [strtTimeFld becomeFirstResponder];
     }
    else  if ([strtTimeFld isFirstResponder]==YES) {
         [strtTempFld becomeFirstResponder];
        
    }
    else  if ([strtTempFld isFirstResponder]==YES) {
         [finshTimeFld becomeFirstResponder];
        
    }
    else  if ([finshTimeFld isFirstResponder]==YES) {
         [finshTempFld becomeFirstResponder];
     }
    else  if ([finshTempFld isFirstResponder]==YES) {
         [hotMealDshdFld becomeFirstResponder];
     }
    else  if ([hotMealDshdFld isFirstResponder]==YES) {
         [hotMealDshdFld resignFirstResponder];
     }
}
- (IBAction) buttonPrevs:(id)sender{
    if ([dateFld isFirstResponder]==YES) {
        [dateFld becomeFirstResponder];
    }
    else if ([ambtTemptFld isFirstResponder]==YES) {
        [dateFld becomeFirstResponder];
    }
    else  if ([strtTimeFld isFirstResponder]==YES) {
        [ambtTemptFld becomeFirstResponder];
        
    }
    else  if ([strtTempFld isFirstResponder]==YES) {
        [strtTimeFld becomeFirstResponder];
        
    }
    else  if ([finshTimeFld isFirstResponder]==YES) {
        [strtTempFld becomeFirstResponder];
    }
    else  if ([finshTempFld isFirstResponder]==YES) {
        [finshTimeFld becomeFirstResponder];
    }
    else  if ([hotMealDshdFld isFirstResponder]==YES) {
        [finshTempFld becomeFirstResponder];
    }
}

- (BOOL)disablesAutomaticKeyboardDismissal {
    return NO;
}

- (void)textViewDidBeginEditing:(UITextView *)textView{
    //self.view.frame = CGRectMake(0, -300, 1024, 768);
    CGRect rect=textView.frame;
    [mealScroll setContentOffset:CGPointMake(0, rect.origin.y-140) animated:YES];
    [meal2Scroll setContentOffset:CGPointMake(0, rect.origin.y-140) animated:YES];
}

- (void)textViewDidEndEditing:(UITextView *)textView{
    //CGRect rect=textView.frame;
    [meal2Scroll setContentOffset:CGPointMake(0, 0) animated:YES];}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range
 replacementText:(NSString *)text
{
    
    
    if ([text isEqualToString:@"\n"]) {
        // Be sure to test for equality using the "isEqualToString" message
        [textView resignFirstResponder];
        self.view.frame = CGRectMake(0, 0, 1024, 768);
        
        // Return FALSE so that the final '\n' character doesn't get added
        return FALSE;
        
    }
    // For any other character return TRUE so that the text gets added to the view
    return TRUE;
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

/*-(void)didRotate:(NSNotification *)notification  {
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
}*/

//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//{
//    if ((orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)) {
//        // Clear the current view and insert the orientation specific view.
//        [self clearCurrentView];
//        [self.view insertSubview:landScapeView atIndex:0];
//    } else if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) {
//        // Clear the current view and insert the orientation specific view.
//        [self clearCurrentView];
//        [self.view insertSubview:potraitView atIndex:0];
//    }
//     
//	return YES;
//}
-(void) clearCurrentView {
    if (landScapeView.superview) {
        [landScapeView removeFromSuperview];
    } else if (potraitView.superview) {
        [potraitView removeFromSuperview];
    }
}

@end
