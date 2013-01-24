//
//  DataCaptureMainViewController.h
//  EForms
//
//  Created by Rahul kumar on 1/7/13.
//  Copyright (c) 2013 vmoksha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GradientButton.h"
#import <sqlite3.h>

@interface DataCaptureMainViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIPopoverControllerDelegate,UIPickerViewDataSource,UIPickerViewDelegate,UITextFieldDelegate,UITextViewDelegate>{
    IBOutlet UIScrollView *mealScroll;
    IBOutlet UIScrollView *meal2Scroll;
    IBOutlet UIView *mealDishingView;
    IBOutlet UIView *dateView;
    IBOutlet UIView *timeView;
    IBOutlet UIView *pickerView;
    IBOutlet UIView *listView;
    IBOutlet UIView *mealView;
    IBOutlet UIPickerView *customPicker;
    IBOutlet UIDatePicker *dtePicker;
    IBOutlet UIDatePicker *timePicker;
    IBOutlet UITextField *createdField;
    IBOutlet UITextField *strtdTimeField;
    IBOutlet UITextField *finishTimeField;
    IBOutlet UITextField *noOfMealField;
    IBOutlet UITextField *foodSftyInchrgField;
    IBOutlet GradientButton *pbarButton;
    IBOutlet GradientButton *larButton;
    IBOutlet GradientButton *saveButton;
    IBOutlet GradientButton *clrButton;
    
    IBOutlet GradientButton *Button1;
    IBOutlet GradientButton *Button2;
    IBOutlet GradientButton *Button3;
    IBOutlet GradientButton *Button4;
    IBOutlet GradientButton *Button5;
    IBOutlet GradientButton *Button6;
    IBOutlet GradientButton *Button7;
    IBOutlet GradientButton *Button8;
    IBOutlet GradientButton *Button9;
    IBOutlet GradientButton *Button0;
    IBOutlet GradientButton *ButtonDot;
    IBOutlet GradientButton *ButtonDone;
    
    IBOutlet UITableView *dataTable;
    IBOutlet UITableView *dataTable2;
    IBOutlet UITableView *listTable;
    IBOutlet UILabel *dateLbl;
    IBOutlet UILabel *shiftLbl;
    IBOutlet UILabel *ambtTemptLbl;
    IBOutlet UILabel *productLbl;
    IBOutlet UILabel *oalLbl;
    IBOutlet UILabel *classLbl;
    IBOutlet UILabel *etdLbl;
    
    IBOutlet UITextField *dateFld;
    IBOutlet UITextField *shiftFld;
    IBOutlet UITextField *ambtTemptFld;
    IBOutlet UITextField *productFld;
    IBOutlet UITextField *oalFld;
    IBOutlet UITextField *classFld;
    IBOutlet UITextField *etdFld;
    IBOutlet UITextField *unitFld;
    IBOutlet UITextField *carriedOutFld;
    IBOutlet UITextField *foodSftyINchageFld;
    IBOutlet UITextField *hotMealDshdFld;
    IBOutlet UITextField *strtTimeFld;
    IBOutlet UITextField *strtTempFld;
    IBOutlet UITextField *finshTimeFld;
    IBOutlet UITextField *finshTempFld;
     
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
    IBOutlet UILabel *mainTitlLbl2;
    IBOutlet UILabel *startTimeLbl;
    IBOutlet UILabel *finishTimeLbl;
    IBOutlet UILabel *noOfMealLbl;
    //IBOutlet UILabel *productLbl;
    //IBOutlet UILabel *oalLbl;
    IBOutlet UIButton *shiftButton;
    IBOutlet UIButton *shiftButton2;
    IBOutlet UIButton *productButton;
    IBOutlet UIButton *oalButton;
    IBOutlet UIButton *classButton;
    IBOutlet UIButton *etdButton;
    
    IBOutlet UIButton *productButton2;
    IBOutlet UIButton *oalButton2;
    IBOutlet UIButton *classButton2;
    IBOutlet UIButton *etdButton2;
    //IBOutlet UILabel *dateLbl;
    IBOutlet UISlider *ambtTempSlidr;
    IBOutlet UISlider *strtTempSlidr;
    IBOutlet UISlider *finishTempSlidr;
    IBOutlet UITextView *hotMealDishedView;
    NSMutableArray *dataArray;
    NSMutableArray *unitArray;
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
    BOOL unitbool;
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
    BOOL meal1Bybool;
    BOOL meal2Bybool;
    BOOL foodsftyInchbool;
    
    BOOL dateclickBool;
    BOOL ambtTempclickBool;
    BOOL strtTimeclickBool;
    BOOL strtTempclickBool;
    BOOL endTempClickBool;
    BOOL endTimeClickBool;
    BOOL hotMealClickBool;
    
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
@property(nonatomic,retain)IBOutlet GradientButton *pbarButton;
@property(nonatomic,retain)IBOutlet GradientButton *lbarButton;
@property(nonatomic,retain)IBOutlet GradientButton *saveButton;
@property(nonatomic,retain)IBOutlet GradientButton *clrButton;

@property(nonatomic,retain)IBOutlet GradientButton *Button1;
@property(nonatomic,retain)IBOutlet GradientButton *Button2;
@property(nonatomic,retain)IBOutlet GradientButton *Button3;
@property(nonatomic,retain)IBOutlet GradientButton *Button4;
@property(nonatomic,retain)IBOutlet GradientButton *Button5;
@property(nonatomic,retain)IBOutlet GradientButton *Button6;
@property(nonatomic,retain)IBOutlet GradientButton *Button7;
@property(nonatomic,retain)IBOutlet GradientButton *Button8;
@property(nonatomic,retain)IBOutlet GradientButton *Button9;
@property(nonatomic,retain)IBOutlet GradientButton *Button0;
@property(nonatomic,retain)IBOutlet GradientButton *ButtonDot;
@property(nonatomic,retain)IBOutlet GradientButton *ButtonDone;
@property(nonatomic,retain)IBOutlet GradientButton *ButtonPrevious;
@property(nonatomic,retain)IBOutlet GradientButton *ButtonNext;
@property(nonatomic,retain)IBOutlet GradientButton *saveButton2;
+ (DataCaptureMainViewController *)defaultNumberpad;
-(IBAction)homeclick:(id)sender;
-(IBAction)unitclick:(id)sender;
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
-(IBAction)foodsafetyIncharge:(id)sender;
-(IBAction)timePicker:(id)sender;
-(IBAction)finishTimePicker:(id)sender;
-(IBAction)customPicker:(id)sender;
-(IBAction)nameCustomPicker:(id)sender;
-(IBAction)doneForDatePicker:(id)sender;
-(IBAction)doneForTimePicker:(id)sender;
-(IBAction)doneForPicker:(id)sender;
-(void)clearCurrentView;

- (IBAction) button1:(id)sender;
- (IBAction) button2:(id)sender;
- (IBAction) button3:(id)sender;
- (IBAction) button4:(id)sender;
- (IBAction) button5:(id)sender;
- (IBAction) button6:(id)sender;
- (IBAction) button7:(id)sender;
- (IBAction) button8:(id)sender;
- (IBAction) button9:(id)sender;
- (IBAction) button0:(id)sender;
- (IBAction) clearButton:(id)sender;
- (IBAction) dotButton:(id)sender;
- (IBAction) buttonNext:(id)sender;
- (IBAction) buttonPrevs:(id)sender;

@end
