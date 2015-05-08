//
//  DetailViewController.h
//  iPass
//
//  Created by 鎌倉 洋平 on 2015/05/07.
//  Copyright (c) 2015年 Yohei Kamakura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IPass.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) IPass *detailItem;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) IBOutlet UITextField *serviceTextField;
@property (strong, nonatomic) IBOutlet UITextField *idTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

@end

