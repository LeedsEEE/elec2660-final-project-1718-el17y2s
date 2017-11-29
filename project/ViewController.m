//
//  ViewController.m
//  project
//
//  Created by 孙宇洋 on 2017/11/12.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "ViewController.h"
#import "BmiViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.picker.delegate=self;
    self.picker.dataSource=self;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    BmiViewController *bmiVC = (BmiViewController *)segue.destinationViewController;
    bmiVC.userName = self.nametextfield.text;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.nametextfield resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Picker View Delegate Methods
-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    NSString *coordinate=[[NSString alloc]init];
    if(component==0){
        if(row==0){
            coordinate=@"Sex";
        }
        if(row==1){
            coordinate=@"Male";
        }
        if(row==2){
            coordinate=@"Female";
        }
    }
    else if(component==1){
        if(row==0){
            coordinate=@"Year";
        }
        else{
            coordinate=[NSString stringWithFormat:@"%ld",2018-row];
        }
    }
    else if(component==2){
        if(row==0){
            coordinate=@"Month";
        }
        else{
            coordinate=[NSString stringWithFormat:@"%ld",row];
        }
    }
    else{
        if(row==0){
            coordinate=@"Day";
        }
        else{
            coordinate=[NSString stringWithFormat:@"%ld",row];
        }
    }
    return coordinate;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
}

#pragma mark Picker View Data Source Methods
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 4;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    NSInteger rows;
    if(component==0){
        rows=3;
    }
    else if(component==1){
        rows=100;
    }
    else if (component==2){
        rows=13;
    }
    else{
        rows=32;
    }
    return rows;
    
}

@end


