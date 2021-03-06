//
//  CPUserReqResultSubModel.m
//  Carpooling
//
//  Created by Yang on 2019/6/12.
//  Copyright © 2019 bw. All rights reserved.
//

#import "CPUserReqResultSubModel.h"
#import "CPUserInfoModel.h"

@implementation CPUserReqResultSubModel
+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{
             @"desc":@"description",
             @"dataid":@"id",
             
             // 左边代表 NHYHCGetHospitalsResult的属性NSArray *hospitals
             // 右边代表 服务器返回的数据中的字段名
             // 服务器返回的hospital_info是一个数组
             @"user":@"user",
             };
}
@end
