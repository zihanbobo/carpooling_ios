//
//  CPHomeReqResultSubModel.m
//  Carpooling
//
//  Created by Yang on 2019/6/8.
//  Copyright © 2019 bw. All rights reserved.
//

#import "CPHomeReqResultSubModel.h"
#import "CPBannerMJModel.h"
#import "CPActivityMJModel.h"
#import "CPScheduleMJModel.h"
#import "CPContractMJModel.h"

@implementation CPHomeReqResultSubModel
+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{
             @"desc":@"description",
             @"dataid":@"id",
             
             // 左边代表 NHYHCGetHospitalsResult的属性NSArray *hospitals
             // 右边代表 服务器返回的数据中的字段名
             // 服务器返回的hospital_info是一个数组
             @"banner":@"banner",
             @"contracts":@"contract",
             @"schedules":@"scheduling",
             @"activitys":@"activity",
             @"hotActivitys":@"hotactivityList",
             };
}

+ (NSDictionary *)mj_objectClassInArray{
    return @{
             @"banner" : @"CPBannerMJModel",
             @"contracts":@"CPContractMJModel",
             @"schedules":@"CPScheduleMJModel",
             @"activitys":@"CPActivityMJModel",
             @"hotActivitys":@"CPActivityMJModel",
             @"allActivity":@"CPActivityMJModel",
             };
}

@end