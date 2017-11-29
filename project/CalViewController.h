//
//  Calviewcontroller.h
//  project
//
//  Created by 孙宇洋 on 2017/11/22.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *totalCalorie;
@property (weak, nonatomic) IBOutlet UILabel *foodCalorie;
@property (weak, nonatomic) IBOutlet UILabel *exerciseCalorie;
@property (weak, nonatomic) IBOutlet UIButton *foodBtn;
@property (weak, nonatomic) IBOutlet UIButton *exerciseBtn;
@property (weak, nonatomic) IBOutlet UILabel *BMILabel;
@property (weak, nonatomic) IBOutlet UILabel *recomendLabel;

@property float myBMI;

- (void)addCalorie:(NSInteger)cal;
- (void)deleteCalorie:(NSInteger)cal;

@end

