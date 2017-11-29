//
//  FoodTableViewController.m
//  project
//
//  Created by 孙宇洋 on 2017/11/22.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "FoodTableViewController.h"
#import "DetailViewController.h"

@interface FoodTableViewController ()

@end

@implementation FoodTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.data=[[datamodel alloc]init];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger temCalorie = 0;
    module*tempmodule = nil;
    if(indexPath.section==0)
    {
        tempmodule=[self.data.Meat objectAtIndex:indexPath.row];
        temCalorie =tempmodule.kcl;
        
    }
    else if(indexPath.section==1){
        module*tempmodule=[self.data.Fruit objectAtIndex:indexPath.row];
        temCalorie =tempmodule.kcl;
    }
    else if(indexPath.section==2){
        module*tempmodule=[self.data.vegetable objectAtIndex:indexPath.row];
        temCalorie =tempmodule.kcl;
    }
    else if(indexPath.section==3){
        module*tempmodule=[self.data.fastfood objectAtIndex:indexPath.row];
        temCalorie =tempmodule.kcl;
    }
    else if(indexPath.section==4){
        module*tempmodule=[self.data.staplefood objectAtIndex:indexPath.row];
        temCalorie =tempmodule.kcl;
    }
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    DetailViewController *detailVC = (DetailViewController *)[storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    detailVC.type = 0;
    detailVC.dataModule = tempmodule;
    detailVC.calVC = self.calVC;
    
    
    [self.navigationController pushViewController:detailVC animated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSInteger numberofrows;
    if(section==0)
    {
        numberofrows =self.data.Meat.count;
        
    }
    else if(section==1){
        numberofrows =self.data.Fruit.count;
    }
    else if(section==2){
        numberofrows =self.data.vegetable.count;
    }
    else if(section==3){
        numberofrows =self.data.fastfood.count;
    }
    else {
        numberofrows =self.data.staplefood.count;
    }
    return numberofrows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    if (indexPath.section==0){
        module*tempmodule=[self.data.Meat objectAtIndex:indexPath.row];
        
        cell.textLabel.text=tempmodule.name;
        cell.detailTextLabel.text=[NSString stringWithFormat:@"100g per %ld kcl",tempmodule.kcl];
        
    }
    else if (indexPath.section==1){
        module*tempmodule=[self.data.Fruit objectAtIndex:indexPath.row];
        cell.textLabel.text=tempmodule.name;
        cell.detailTextLabel.text=[NSString stringWithFormat:@"100g per %ld kcl",tempmodule.kcl];
    }
    else if (indexPath.section==2){
        module*tempmodule=[self.data.vegetable objectAtIndex:indexPath.row];
        cell.textLabel.text=tempmodule.name;
        cell.detailTextLabel.text=[NSString stringWithFormat:@"100g per %ld kcl",tempmodule.kcl];
    }
    else if (indexPath.section==3){
        module*tempmodule=[self.data.fastfood objectAtIndex:indexPath.row];
        cell.textLabel.text=tempmodule.name;
        cell.detailTextLabel.text=[NSString stringWithFormat:@"100g per %ld kcl",tempmodule.kcl];
    }
    else {
        module*tempmodule=[self.data.staplefood objectAtIndex:indexPath.row];
        cell.textLabel.text=tempmodule.name;
        cell.detailTextLabel.text=[NSString stringWithFormat:@"100g per %ld kcl",tempmodule.kcl];
    }
    
    return cell;
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view channe.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if(section==0){
        
        return [NSString stringWithFormat:@"Meat"];
    }
    else if (section==1){
        return [NSString stringWithFormat:@"Fruit"];
    }
    else if (section==2){
        return [NSString stringWithFormat:@"Vegetable"];
    }
    else if (section==3){
        return [NSString stringWithFormat:@"Fastfood"];
    }
    else {
        return [NSString stringWithFormat:@"Staple food"];
    }
}


@end
