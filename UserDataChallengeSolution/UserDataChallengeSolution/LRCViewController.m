//
//  LRCViewController.m
//  UserDataChallengeSolution
//
//  Created by Luis Carbuccia on 7/20/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "LRCViewController.h"
#import "UserData.h"


@interface LRCViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation LRCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.usersArray = [UserData users];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
}

#pragma mark - Conform to Protocols

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"userCell";
    UITableViewCell *myCell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    NSDictionary *user = [self.usersArray objectAtIndex:indexPath.row];
   
    NSLog(@"%@", user);
    
    myCell.textLabel.text = @"test";
    myCell.detailTextLabel.text = [user objectForKey:EMAIL];
    myCell.imageView.image = [user objectForKey:PROFILE_PICTURE];
    
    return myCell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.usersArray count];
}

@end
