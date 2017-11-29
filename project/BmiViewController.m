//
//  Bmiviewcontroller.m
//  project
//
//  Created by 孙宇洋 on 2017/11/22.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "BmiViewController.h"
#import "CalViewController.h"

@interface BmiViewController ()

@end

@implementation BmiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.namelabel.text = self.userName;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    CalViewController *calVC = (CalViewController *)segue.destinationViewController;
    calVC.myBMI = _bmi;
}

- (IBAction)heightslider:(UISlider *)sender {
    self.heightlabel.text = [NSString stringWithFormat:@"Height = %.2f M", sender.value];
    _height = sender.value;
    _bmi = _weight/pow(_height,2);
}

- (IBAction)weightslider:(UISlider *)sender {
    self.weightlabel.text = [NSString stringWithFormat:@"Weight = %.0f KG", sender.value];
    _weight = sender.value;
    _bmi = _weight/pow(_height,2);
}

- (IBAction)calculatebuttom:(UIButton *)sender {
    self.bmivaluelabel.text=[NSString stringWithFormat:@"%.2f",_bmi];
    
    if(_bmi<15)
    {
        self.bmilabel.text= [NSString stringWithFormat:@"Very severely underwieght" ];
    }
    if (_bmi>=15 && _bmi<=16)
    {
        self.bmilabel.text= [NSString stringWithFormat:@"Severely underwieght" ];
    }
    if (_bmi>16 && _bmi<=18.5)
    {
        self.bmilabel.text= [NSString stringWithFormat:@"Underwieght" ];
    }
    if (_bmi>18.5 && _bmi<=25)
    {
        self.bmilabel.text= [NSString stringWithFormat:@"Normal(healthy)" ];
    }
    if (_bmi>25 && _bmi<=30)
    {
        self.bmilabel.text= [NSString stringWithFormat:@"Overweight" ];
    }
    if (_bmi>30 && _bmi<=35)
    {
        self.bmilabel.text= [NSString stringWithFormat:@"Obese Class 1 (Moderately obese)" ];
    }
    if (_bmi>35 && _bmi<=40)
    {
        self.bmilabel.text= [NSString stringWithFormat:@"Obese Class 2 (Severely obese)" ];
    }
    if (_bmi>40)
    {
        self.bmilabel.text= [NSString stringWithFormat:@"Obese Class 1 (Very severely obese)" ];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

