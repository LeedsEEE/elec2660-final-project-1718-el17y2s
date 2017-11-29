//
//  datamodel.m
//  project
//
//  Created by 孙宇洋 on 2017/11/13.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "datamodel.h"

@implementation datamodel

- (instancetype)init
{
    self = [super init];
    if (self) {
        //fruit
        self.Fruit=[NSMutableArray array];
        module*apple=[[module alloc]init];
        apple.name=@"Apple";
        apple.kcl=52;
        
        module*orange=[[module alloc]init];
        orange.name=@"Orange";
        orange.kcl=50;
        
        module*banana=[[module alloc]init];
        banana.name=@"Banana";
        banana.kcl=91;
        
        module*pear=[[module alloc]init];
        pear.name=@"Pear";
        pear.kcl=30;
        
        module*watermelon=[[module alloc]init];
        watermelon.name=@"Watermelon";
        watermelon.kcl=44;
        
        module*strawberry=[[module alloc]init];
        strawberry.name=@"Strawberry";
        strawberry.kcl=30;
        
        module*pineapple=[[module alloc]init];
        pineapple.name=@"Pineapple";
        pineapple.kcl=44;
        
        module*peach=[[module alloc]init];
        peach.name=@"Peach";
        peach.kcl=48;
        
        self.Fruit = [[NSMutableArray alloc] initWithObjects:apple,orange,banana,pear,watermelon,nil];
        
        //meat
        self.Meat=[NSMutableArray array];
        module*beef=[[module alloc]init];
        beef.name=@"Beef";
        beef.kcl=125;
        
        module*chicken=[[module alloc]init];
        chicken.name=@"Chicken";
        chicken.kcl=167;
        
        module*mutton=[[module alloc]init];
        mutton.name=@"Mutton";
        mutton.kcl=203;
        
        module*pork=[[module alloc]init];
        pork.name=@"Pork";
        pork.kcl=143;
        
        module*duck=[[module alloc]init];
        duck.name=@"Duck";
        duck.kcl=240;
        
        self.Meat = [[NSMutableArray alloc] initWithObjects:beef,chicken,mutton,pork,nil];
        
        //staplefood
        self.staplefood=[NSMutableArray array];
        module*rice=[[module alloc]init];
        rice.name=@"Rice";
        rice.kcl=116;
        
        module*noodles=[[module alloc]init];
        noodles.name=@"Noodles";
        noodles.kcl=284;
        
        module*bread=[[module alloc]init];
        bread.name=@"Bread";
        bread.kcl=312;
        
        module*corn=[[module alloc]init];
        corn.name=@"Corn";
        corn.kcl=351;
        
        module*dumpling=[[module alloc]init];
        dumpling.name=@"Dumpling";
        dumpling.kcl=218;
        
        self.staplefood = [[NSMutableArray alloc] initWithObjects:rice,dumpling,bread,corn,noodles,nil];
        
        //fastfood
        self.fastfood=[NSMutableArray array];
        module*pizza=[[module alloc]init];
        pizza.name=@"Pizza";
        pizza.kcl=230;
        
        module*burger=[[module alloc]init];
        burger.name=@"Burger";
        burger.kcl=292;
        
        module*chips=[[module alloc]init];
        chips.name=@"Chips";
        chips.kcl=298;
        
        module*sausage=[[module alloc]init];
        sausage.name=@"Sausage";
        sausage.kcl=200;
        
        module*friedchicken=[[module alloc]init];
        friedchicken.name=@"Fried chicken";
        friedchicken.kcl=421;
        
        self.fastfood=[[NSMutableArray alloc]initWithObjects:friedchicken,burger,sausage,chips,pizza, nil];
        
        
        //vegetable
        self.vegetable=[NSMutableArray array];
        module*tomato=[[module alloc]init];
        tomato.name=@"Tomato";
        tomato.kcl=19;
        
        module*potato=[[module alloc]init];
        potato.name=@"Potato";
        potato.kcl=62;
        
        module*onion=[[module alloc]init];
        onion.name=@"Onion";
        onion.kcl=39;
        
        module*cucumber=[[module alloc]init];
        cucumber.name=@"Cucumber";
        cucumber.kcl=15;
        
        module*greenpepper=[[module alloc]init];
        greenpepper.name=@"Green pepper";
        greenpepper.kcl=23;
        
        self.vegetable=[[NSMutableArray alloc]initWithObjects:greenpepper,tomato,potato,onion,cucumber, nil];
        
        
        
        //outerExercise
        self.outerExercise=[NSMutableArray array];
        module*jogging=[[module alloc]init];
        jogging.name=@"Running";
        jogging.kcl=224;
        
        module*climbing=[[module alloc]init];
        climbing.name=@"Climbing";
        climbing.kcl=20;
        
        module*riding=[[module alloc]init];
        riding.name=@"Riding";
        riding.kcl=262;
        
        module*archery=[[module alloc]init];
        archery.name=@"Archery";
        archery.kcl=56;
        
        
        self.outerExercise = [[NSMutableArray alloc] initWithObjects:jogging,climbing,riding,archery,nil];
        
        //ballgames
        self.ballgames=[NSMutableArray array];
        module*basketball=[[module alloc]init];
        basketball.name=@"Basketball";
        basketball.kcl=131;
        
        module*football=[[module alloc]init];
        football.name=@"Football";
        football.kcl=262;
        
        module*badminton=[[module alloc]init];
        badminton.name=@"Badminton";
        badminton.kcl=131;
        
        module*tabletennis=[[module alloc]init];
        tabletennis.name=@"Tabletennis";
        tabletennis.kcl=112;
        
        self.ballgames = [[NSMutableArray alloc] initWithObjects:basketball,football,badminton,tabletennis, nil];
        
        //powermovement
        self.powermovement=[NSMutableArray array];
        module*pushups=[[module alloc]init];
        pushups.name=@"Push-ups";
        pushups.kcl=280;
        
        module*Rollofabdominal=[[module alloc]init];
        Rollofabdominal.name=@"Roll of abdominal";
        Rollofabdominal.kcl=243;
        
        module*squat=[[module alloc]init];
        squat.name=@"Squat";
        squat.kcl=243;
        
        module*situps=[[module alloc]init];
        situps.name=@"Sit-ups";
        situps.kcl=224;
        
        module*plank=[[module alloc]init];
        plank.name=@"Plank";
        plank.kcl=262;
        self.powermovement = [[NSMutableArray alloc] initWithObjects:situps,pushups,Rollofabdominal,squat,plank, nil];
        
        //daliy life
        self.dailylife=[NSMutableArray array];
        module*washingcloth=[[module alloc]init];
        washingcloth.name=@"Washing cloth";
        washingcloth.kcl=37;
        
        module*washingdishes=[[module alloc]init];
        washingdishes.name=@"Washing dishes";
        washingdishes.kcl=48;
        
        module*Springcleaning=[[module alloc]init];
        Springcleaning.name=@"Spring cleaning";
        Springcleaning.kcl=56;
        
        module*cooking=[[module alloc]init];
        cooking.name=@"Cooking";
        cooking.kcl=37;
        
        module*floor=[[module alloc]init];
        floor.name=@"Sweeping the floor";
        floor.kcl=93;
        self.dailylife = [[NSMutableArray alloc] initWithObjects:washingcloth,washingdishes,cooking,Springcleaning,floor, nil];
        
        
        //water sports
        self.watersports=[NSMutableArray array];
        module*swimming=[[module alloc]init];
        swimming.name=@"Swimming";
        swimming.kcl=187;
        
        module*diving=[[module alloc]init];
        diving.name=@"Diving";
        diving.kcl=74;
        
        module*snorkeling=[[module alloc]init];
        snorkeling.name=@"Snorkeling";
        snorkeling.kcl=149;
        
        module*surfing=[[module alloc]init];
        surfing.name=@"Surfing";
        surfing.kcl=187;
        
        module*rowing=[[module alloc]init];
        rowing.name=@"Rowing";
        rowing.kcl=56;
        self.watersports = [[NSMutableArray alloc] initWithObjects:rowing,diving,surfing,swimming,snorkeling, nil];
    }
    
    return self;
}

@end
