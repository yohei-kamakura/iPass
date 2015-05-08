//
//  IPass.h
//  iPass
//
//  Created by 鎌倉 洋平 on 2015/05/07.
//  Copyright (c) 2015年 Yohei Kamakura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface IPass : NSManagedObject

@property (nonatomic, retain) NSString * service;
@property (nonatomic, retain) NSString * id;
@property (nonatomic, retain) NSString * password;

@end
