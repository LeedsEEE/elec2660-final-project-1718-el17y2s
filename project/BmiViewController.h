//
//  Bmiviewcontroller.h
//  project
//
//  Created by 孙宇洋 on 2017/11/22.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BmiViewController : UIViewController

- (IBAction)heightslider:(UISlider *)sender;
- (IBAction)weightslider:(UISlider *)sender;

- (IBAction)calculatebuttom:(UIButton *)sender;


@property (weak, nonatomic) IBOutlet UILabel *heightlabel;
@property (weak, nonatomic) IBOutlet UILabel *weightlabel;
@property (weak, nonatomic) IBOutlet UILabel *bmilabel;
@property (weak, nonatomic) IBOutlet UILabel *namelabel;
@property (weak, nonatomic) IBOutlet UILabel *bmivaluelabel;

@property (nonatomic, strong)NSString *userName;


@property float height;
@property float weight;
@property float bmi;

@end
