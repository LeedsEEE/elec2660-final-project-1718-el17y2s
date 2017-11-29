//
//  Detailviewcontroller.h
//  project
//
//  Created by 孙宇洋 on 2017/11/22.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "module.h"
#import "CalViewController.h"

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomLabel;
@property (weak, nonatomic) IBOutlet UILabel *unitLabel;

@property (nonatomic, assign)NSInteger type;//0 food; 1 exercise
@property (nonatomic, strong)module *dataModule;
@property (nonatomic, strong)CalViewController *calVC;

@property (nonatomic, assign)float calorie;

@end
