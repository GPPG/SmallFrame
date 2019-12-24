//
//  GPReminderController.m
//  AlarmClock
//
//  Created by 郭鹏 on 2019/12/23.
//  Copyright © 2019 郭鹏. All rights reserved.
//

#import "GPReminderController.h"

@interface GPReminderController ()



@end

@implementation GPReminderController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNav];
    [self setupUI];


}

#pragma mark - Set Up

- (void)setupNav{
    
    self.navigationController.navigationBar.shadowImage = [[UIImage alloc] init];
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"setting_reminder_list_icon_add"] style:UIBarButtonItemStylePlain target:self action:@selector(addAction)];
    self.navigationItem.title = @"闹钟";
    NSDictionary *attr = @{NSFontAttributeName: sfMedium(18), NSForegroundColorAttributeName: color(0x424242)};
    [self.navigationController.navigationBar setTitleTextAttributes:attr];
    
}

- (void)setupUI{
    
    self.view.backgroundColor = [UIColor whiteColor];
//
//    WS(ws);
//    FITNoReminderView *reminderView = [[FITNoReminderView alloc]initWithFrame:CGRectMake(0, 0, kMainScreenWidth, kMainScreenHeight)];
//    reminderView.setReminderBlock = ^{
//        [ws addAction];
//    };
//
//    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, kMainScreenWidth, kMainScreenHeight) style:UITableViewStylePlain];
//    self.tableView.delegate = self;
//    self.tableView.dataSource = self;
//    [self.view addSubview:self.tableView];
//    self.tableView.enablePlaceHolderView = YES;
//    self.tableView.yh_PlaceHolderView = reminderView;
//    self.tableView.rowHeight = 132;
//    [self.tableView registerClass:[FITReminderCell class] forCellReuseIdentifier:FITReminderCellID];
//    self.tableView.tableFooterView = [[UIView alloc]init];
//    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
//    self.tableView.backgroundColor =  [UIColor colorWithRed:0.96 green:0.96 blue:0.96 alpha:1.00];
//    self.tableView.contentInset = UIEdgeInsetsMake(12, 0, 0, 0);
//
//
//    if (IOS_VERSION_10_OR_Below) {
//        self.edgesForExtendedLayout = UIRectEdgeNone;
//    }
    
}

#pragma mark - Action
- (void)addAction{
    
    [self addsetReminder];
}

- (void)addsetReminder{
//    self.setReminderController.setReminderType = setRemindAddType;
//    self.setReminderController.savePushManger = self.savePushManger;
//    [self.popcantainTool popup:nil];
//    self.tableView.scrollEnabled = NO;
}


@end
