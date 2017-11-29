//
//  Detailviewcontroller.m
//  project
//
//  Created by 孙宇洋 on 2017/11/22.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.type == 0) {
        self.unitLabel.text = @"g";
        self.slider.minimumValue = 0;
        self.slider.maximumValue = 3000;
    }
    else if (self.type == 1){
        self.unitLabel.text = @"min";
        self.slider.minimumValue = 0;
        self.slider.maximumValue = 300;
    }
    self.bottomLabel.text = @"0";
    self.topLabel.text = @"0";
    self.nameLabel.text = self.dataModule.name;
    _calorie = 0;
    [self setImage];
}

- (void)setImage{
    
    if ([self.dataModule.name isEqualToString:@"Apple"]) {
        self.imageView.image = [UIImage imageNamed:@"apple.jpg"];
    }
    else if ([self.dataModule.name isEqualToString:@"Orange"]) {
        self.imageView.image = [UIImage imageNamed:@"orange.jpg"];
    }
    else if ([self.dataModule.name isEqualToString:@"Banana"]) {
        self.imageView.image = [UIImage imageNamed:@"banana.jpg"];
    }
    else if ([self.dataModule.name isEqualToString:@"Pear"]) {
        self.imageView.image = [UIImage imageNamed:@"pear.jpg"];
    }
    else if ([self.dataModule.name isEqualToString:@"Watermelon"]) {
        self.imageView.image = [UIImage imageNamed:@"watermelon.jpg"];
    }
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
}

- (IBAction)sliderChanged:(UISlider *)sender {
    if (self.type == 0) {
        //food
        _calorie = sender.value * self.dataModule.kcl ;
        self.bottomLabel.text = [NSString stringWithFormat:@"%.2f",_calorie];
        self.topLabel.text = [NSString stringWithFormat:@"%.2f",sender.value];
    }
    else if (self.type == 1){
        //exercise
        _calorie = sender.value/30 * self.dataModule.kcl;
        self.bottomLabel.text = [NSString stringWithFormat:@"%.2f",_calorie];
        self.topLabel.text = [NSString stringWithFormat:@"%.2f",sender.value];
    }
}

- (IBAction)addAction:(id)sender {
    if (self.type == 0) {
        [self.calVC addCalorie:_calorie];
    }
    else if (self.type == 1){
        [self.calVC deleteCalorie:_calorie];
    }
    [self.navigationController popToViewController:self.calVC animated:YES];
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
