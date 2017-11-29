//
//  TableViewController.h
//  project
//
//  Created by 孙宇洋 on 2017/11/12.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "datamodel.h"
#import "CalViewController.h"

@interface TableViewController : UITableViewController

@property (strong,nonatomic) datamodel*data;
@property (nonatomic, strong) CalViewController *calVC;

@end
