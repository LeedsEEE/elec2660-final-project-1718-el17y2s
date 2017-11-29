//
//  datamodel.h
//  project
//
//  Created by 孙宇洋 on 2017/11/13.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "module.h"

@interface datamodel : NSObject

@property (strong,nonatomic) NSMutableArray *Fruit;
@property (strong,nonatomic) NSMutableArray *Meat;
@property (strong,nonatomic) NSMutableArray *staplefood;
@property (strong,nonatomic) NSMutableArray *fastfood;
@property (strong,nonatomic) NSMutableArray *vegetable;

@property (strong,nonatomic) NSMutableArray *ballgames;
@property (strong,nonatomic) NSMutableArray *outerExercise;
@property (strong,nonatomic) NSMutableArray *powermovement;
@property (strong,nonatomic) NSMutableArray *dailylife;
@property (strong,nonatomic) NSMutableArray *watersports;
@end

