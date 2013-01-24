//
//  CustomCellViewController.h
//  EForms
//
//  Created by Rahul kumar on 1/23/13.
//  Copyright (c) 2013 vmoksha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCellViewController : UITableViewCell{
    IBOutlet UILabel *productLabl;
    IBOutlet UILabel *oalLabl;
    IBOutlet UILabel *etdLabl;
    IBOutlet UILabel *processLabl;
    IBOutlet UILabel *strtTimeLabl;
    IBOutlet UILabel *strtTempLabl;
    IBOutlet UILabel *finshTimeLabl;
     IBOutlet UILabel *finshTempLabl;
     IBOutlet UIImageView *imag;
}

@property(nonatomic,retain)IBOutlet UILabel *productLabl;
@property(nonatomic,retain)IBOutlet UILabel *oalLabl;
@property(nonatomic,retain)IBOutlet UILabel *etdLabl;
@property(nonatomic,retain)IBOutlet UILabel *processLabl;
@property(nonatomic,retain)IBOutlet UILabel *strtTimeLabl;
@property(nonatomic,retain)IBOutlet UILabel *strtTempLabl;
@property(nonatomic,retain)IBOutlet UILabel *finshTimeLabl;
@property(nonatomic,retain)IBOutlet UILabel *finshTempLabl;
@property(nonatomic,retain)IBOutlet UIImageView *imag;

@end
