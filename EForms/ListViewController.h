//
//  ListViewController.h
//  EForms
//
//  Created by Rahul kumar on 1/8/13.
//  Copyright (c) 2013 vmoksha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GradientButton.h"
#import <sqlite3.h>

@interface ListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIPopoverControllerDelegate,UIPickerViewDataSource,UIPickerViewDelegate>{
    IBOutlet UIScrollView *mealScroll;
    IBOutlet UIView *mealDishingView;
    IBOutlet UIView *dateView;
    IBOutlet UIView *timeView;
    IBOutlet UIView *pickerView;
    IBOutlet UIView *listView;
    IBOutlet UIPickerView *customPicker;
    IBOutlet UIDatePicker *dtePicker;
    IBOutlet UIDatePicker *timePicker;
    IBOutlet UITextField *createdField;
    IBOutlet UITextField *strtdTimeField;
    IBOutlet UITextField *finishTimeField;
    IBOutlet UITextField *noOfMealField;
    IBOutlet UITextField *foodSftyInchrgField;
    IBOutlet GradientButton *barButton;
    IBOutlet GradientButton *saveButton;
    IBOutlet GradientButton *clrButton;
    IBOutlet UITableView *dataTable;
    IBOutlet UITableView *listTable;
    IBOutlet UILabel *dateLbl;
    IBOutlet UILabel *shiftLbl;
    IBOutlet UILabel *ambtTemptLbl;
    IBOutlet UILabel *productLbl;
    IBOutlet UILabel *oalLbl;
    IBOutlet UILabel *classLbl;
    IBOutlet UILabel *etdLbl;
    IBOutlet UIButton *btn1;
    IBOutlet UIButton *btn2;
    IBOutlet UIButton *btn3;
    IBOutlet UIButton *btn4;
    IBOutlet UIButton *btn5;
    IBOutlet UIButton *btn6;
    IBOutlet UIButton *btn7;
    IBOutlet UIButton *btn8;
    IBOutlet UIButton *btn9;
    IBOutlet UIButton *btn10;
    IBOutlet UIButton *btn11;
    IBOutlet UIButton *btn12;
    IBOutlet UIButton *btn13;
    IBOutlet UILabel *strtTemptLbl;
    IBOutlet UILabel *finishTemptLbl;
    IBOutlet UILabel *mainTitlLbl;
    IBOutlet UILabel *startTimeLbl;
    IBOutlet UILabel *finishTimeLbl;
    IBOutlet UILabel *noOfMealLbl;
    //IBOutlet UILabel *productLbl;
    //IBOutlet UILabel *oalLbl;
    IBOutlet UIButton *shiftButton;
    IBOutlet UIButton *productButton;
    IBOutlet UIButton *oalButton;
    IBOutlet UIButton *classButton;
    IBOutlet UIButton *etdButton;
    //IBOutlet UILabel *dateLbl;
    IBOutlet UISlider *ambtTempSlidr;
    IBOutlet UISlider *strtTempSlidr;
    IBOutlet UISlider *finishTempSlidr;
    IBOutlet UITextView *hotMealDishedView;
    NSMutableArray *dataArray;
    NSMutableArray *shiftArray;
    NSMutableArray *productArray;
    NSMutableArray *oalArray;
    NSMutableArray *etdArray;
    NSMutableArray *classArray;
    NSMutableArray *listArray;
    NSMutableArray *noOfMealArray;
    NSMutableArray *itemArray;
    NSString *dateString;
    UITableView *shiftTableView;
    UIPopoverController *shiftPopoverController;
    //UIPopoverController *monthPopoverController;
    NSMutableArray *array;
    NSMutableDictionary *dict;
    BOOL shftbool;
    BOOL productbool;
    BOOL oalbool;
    BOOL classbool;
    BOOL etdbool;
    BOOL databool;
    BOOL listbool;
    BOOL startTimebool;
    BOOL finishTimebool;
    BOOL carriedBybool;
    BOOL noOfmealbool;
    
    int returncode;
	sqlite3 *pdb;
	char *sqlstatement;
	char *errormsg;
    NSString *getPickerString;
    
    IBOutlet UIView *landScapeView;
    IBOutlet UIView *potraitView;
    UIDeviceOrientation orientation;
}
@property(nonatomic,retain)IBOutlet UIView *landScapeView;
@property(nonatomic,retain)IBOutlet UIView *potraitView;
@property(nonatomic,retain)IBOutlet UISlider *ambtTempSlidr;
@property(nonatomic,retain)IBOutlet UISlider *strtTempSlidr;
@property(nonatomic,retain)IBOutlet UISlider *finishTempSlidr;
@property(nonatomic,retain)NSString *dateString;
@property(strong,nonatomic)NSString *getPickerString;
//@property(nonatomic,retain)
//@property(nonatomic,retain)
//@property(nonatomic,retain)
//@property(nonatomic,retain)
//@property(nonatomic,retain)
//@property(nonatomic,retain)
//@property(nonatomic,retain)
//@property(nonatomic,retain)
//@property(nonatomic,retain)
//@property(nonatomic,retain)
//@property(nonatomic,retain)
//@property(nonatomic,retain)
//@property(nonatomic,retain)
//@property(nonatomic,retain)
@property(nonatomic,retain)IBOutlet GradientButton *barButton;
@property(nonatomic,retain)IBOutlet GradientButton *saveButton;
@property(nonatomic,retain)IBOutlet GradientButton *clrButton;
-(IBAction)homeclick:(id)sender;
-(IBAction)dateclick:(id)sender;
-(IBAction)shiftclick:(id)sender;
-(IBAction)productclick:(id)sender;
-(IBAction)oalclick:(id)sender;
-(IBAction)classclick:(id)sender;
-(IBAction)etdClick:(id)sender;
-(IBAction)ambtTempSlidr:(id)sender;
-(IBAction)strtTempSlider:(id)sender;
-(IBAction)finishTemp:(id)sender;
-(IBAction)listView:(id)sender;
-(IBAction)save:(id)sender;
-(IBAction)clear:(id)sender;
-(IBAction)add:(id)sender;
-(IBAction)timePicker:(id)sender;
-(IBAction)finishTimePicker:(id)sender;
-(IBAction)customPicker:(id)sender;
-(IBAction)nameCustomPicker:(id)sender;
-(IBAction)doneForDatePicker:(id)sender;
-(IBAction)doneForTimePicker:(id)sender;
-(IBAction)doneForPicker:(id)sender;


@end
