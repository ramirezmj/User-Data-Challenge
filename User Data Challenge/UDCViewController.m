//
//  UDCViewController.m
//  User Data Challenge
//
//  Created by Jose Manuel Ramirez Martinez on 15/09/14.
//  Copyright (c) 2014 Jose Manuel Ramírez Martínez. All rights reserved.
//

#import "UDCViewController.h"
#import "UDCUserData.h"

@interface UDCViewController ()

@end

@implementation UDCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.users = [UDCUserData users];
//    NSLog(@"%@", self.users);
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.users count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"userCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    NSDictionary *user = self.users[indexPath.row];
    cell.textLabel.text = user[USER_NAME];
    cell.detailTextLabel.text = user[USER_EMAIL];
    cell.imageView.image = user[USER_PROFILE_PICTURE];
    
    return cell;
}

@end
