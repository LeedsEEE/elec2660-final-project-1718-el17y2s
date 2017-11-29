//
//  Calviewcontroller.m
//  project
//
//  Created by 孙宇洋 on 2017/11/22.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "CalViewController.h"
#import "FoodTableViewController.h"
#import "TableViewController.h"

@interface CalViewController (){
    NSInteger foodCal;
    NSInteger exerciseCal;
    NSInteger totalCal;
}

@end

@implementation CalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    foodCal = 0;
    exerciseCal = 0;
    totalCal = 0;
    self.BMILabel.text = [NSString stringWithFormat:@"%.2f",_myBMI];
    [self setRecomend];
}

- (void)setRecomend{
    
    self.recomendLabel.text = @"Rice";
}

- (IBAction)jumpToFoodVC:(id)sender {
    [self performSegueWithIdentifier:@"FoodTableViewController" sender:nil];
}

- (IBAction)jumpToExercise:(id)sender {
    [self performSegueWithIdentifier:@"TableViewController" sender:nil];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"FoodTableViewController"]) {
        FoodTableViewController *foodVC = (FoodTableViewController *)segue.destinationViewController;
        foodVC.calVC = self;
    }
    else if ([segue.identifier isEqualToString:@"TableViewController"]){
        TableViewController *exerciseVC = (TableViewController *)segue.destinationViewController;
        exerciseVC.calVC = self;
    }
}

- (void)addCalorie:(NSInteger)cal{
    foodCal = foodCal + cal;
    totalCal = totalCal + cal;
    self.totalCalorie.text = [NSString stringWithFormat:@"%ld",totalCal];
    self.foodCalorie.text = [NSString stringWithFormat:@"%ld",foodCal];
}

- (void)deleteCalorie:(NSInteger)cal{
    exerciseCal = exerciseCal + cal;
    totalCal = totalCal - cal;
    self.totalCalorie.text = [NSString stringWithFormat:@"%ld",totalCal];
    self.exerciseCalorie.text = [NSString stringWithFormat:@"%ld",exerciseCal];
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
