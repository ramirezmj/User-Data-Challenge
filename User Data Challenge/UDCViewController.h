//
//  UDCViewController.h
//  User Data Challenge
//
//  Created by Jose Manuel Ramirez Martinez on 15/09/14.
//  Copyright (c) 2014 Jose Manuel Ramírez Martínez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UDCViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *users;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
