//
//  DetailViewController.h
//  iPass
//
//  Created by 鎌倉 洋平 on 2015/05/07.
//  Copyright (c) 2015年 Yohei Kamakura. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

