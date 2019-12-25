//
//  TATarReadingDrawContentMode.m
//  Tarot
//
//  Created by 郭鹏 on 2019/1/9.
//  Copyright © 2019 郭鹏. All rights reserved.
//

#import "TATarReadingDrawContentMode.h"

@implementation TATarReadingDrawContentMode

- (instancetype)initWithMode{
    
    if (self = [super init]) {
        [self setup];
    }
    return self;
    
}

- (void)setup{
    
    self.spreadId = 1;
    self.topicId =  @"12";
    self.topicName = @"加油";
    
    NSArray *tempCardArray = SUPPORT_SPREAD_LIST;

    // 假数据
//    if (!self.spreadId || ![tempCardArray containsObject:anserModel.spreadId]) {
        NSInteger idVaule = arc4random() % 6;
        self.spreadId = [tempCardArray[idVaule] integerValue];
//    }

//    NSArray <TATarotAnswerModel *>*array = anserModel.topicAnswers.topicTarotAnswers;
//
//    [array sortedArrayUsingComparator:^NSComparisonResult(TATarotAnswerModel  *obj1, TATarotAnswerModel   * obj2) {
//        return [@(obj1.angleNumber) compare:@(obj2.angleNumber)];
//    }];
//
//    NSMutableArray *tempArray = [NSMutableArray array];
//
//    [array enumerateObjectsUsingBlock:^(TATarotAnswerModel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        TATarReadingDrawCardMode *mode = [[TATarReadingDrawCardMode alloc]init];
//        if (obj.tarotPlaceType == 1) {
//            mode.cardType = YES;
//        }else{
//            mode.cardType = NO;
//        }
//        mode.cardID = obj.tarotKey;
//
//        [tempArray addObject:mode];
//    }];
    
    // 假数据
    NSMutableArray *tempArray = [NSMutableArray array];

    if (tempArray.count < 4) {
        TATarReadingDrawCardMode *mode = [[TATarReadingDrawCardMode alloc]init];
        mode.cardType = YES;
        mode.cardID = @"1";
        TATarReadingDrawCardMode *mode1 = [[TATarReadingDrawCardMode alloc]init];
        mode1.cardType = YES;
        mode1.cardID = @"6";
        
        TATarReadingDrawCardMode *mode2 = [[TATarReadingDrawCardMode alloc]init];
        mode2.cardType = YES;
        mode2.cardID = @"8";
        
        TATarReadingDrawCardMode *mode3 = [[TATarReadingDrawCardMode alloc]init];
        mode3.cardType = YES;
        mode3.cardID = @"9";
        TATarReadingDrawCardMode *mode4 = [[TATarReadingDrawCardMode alloc]init];
        mode4.cardType = YES;
        mode4.cardID = @"10";
        TATarReadingDrawCardMode *mode5 = [[TATarReadingDrawCardMode alloc]init];
        mode5.cardType = YES;
        mode5.cardID = @"11";
        [tempArray addObject:mode];
        [tempArray addObject:mode1];
        [tempArray addObject:mode2];
        [tempArray addObject:mode3];
        [tempArray addObject:mode4];
        [tempArray addObject:mode5];
    }
    self.cardModeArray = [tempArray copy];
}

@end


@implementation TATarReadingDrawCardMode

@end
