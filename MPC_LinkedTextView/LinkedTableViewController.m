//
//  LinkedTableViewController.m
//  MPC_LinkedTextView
//
//  Created by Michael Critchley on 2018/10/08.
//  Copyright © 2018 Michael Critchley. All rights reserved.
//

#import "LinkedTableViewController.h"
#import "MPC_LinkedTextViewCell.h"

@interface LinkedTableViewController ()

@end

@implementation LinkedTableViewController

+ (NSBundle *)bundle
{
    return [NSBundle bundleForClass:[self class]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self _registerNibs];
    [self.tableView setEstimatedRowHeight:50];
    
}

- (void)_registerNibs
{
    [self.tableView registerNib:[UINib nibWithNibName:[MPC_LinkedTextViewCell nibName] bundle:[LinkedTableViewController bundle]] forCellReuseIdentifier:[MPC_LinkedTextViewCell reuseID]];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return [self _textCellForTable:tableView indexPath:indexPath];
}

- (MPC_LinkedTextViewCell *)_textCellForTable:(UITableView *)table indexPath:(NSIndexPath *)path
{
    MPC_LinkedTextViewCell *cell = [table dequeueReusableCellWithIdentifier:[MPC_LinkedTextViewCell reuseID] forIndexPath:path];
    switch (path.section) {
        case 0:
            [cell.linkedTextView displaySignUpButtonPrivacyPolicy];
            break;
        case 1:
            [cell.linkedTextView updateTextViewWithFullText:@"For the best pizza in Thailand, try New York Pizza House" linkTriggerText:@"New York Pizza House" linkURLString:@"https://www.newyorkpizza.co.th"];
            break;
            
        case 2:
             [cell.linkedTextView updateTextViewWithFullText:@"Who doesn't love linking to a bunch of emoji ❇️ 💖 📅 🌐" linkTriggerText:@"❇️ 💖 📅 🌐" linkURLString:@"https://worldemojiday.com"];
            break;
            
        default:
            return [MPC_LinkedTextViewCell new];
            break;
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return section == 0 ? 40 : 0;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return section == 0 ? @"Test Links" : nil;
}

@end
