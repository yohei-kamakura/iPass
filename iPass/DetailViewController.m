//
//  DetailViewController.m
//  iPass
//
//  Created by 鎌倉 洋平 on 2015/05/07.
//  Copyright (c) 2015年 Yohei Kamakura. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(IPass *)newDetailItem {
	if (_detailItem != newDetailItem) {
	    _detailItem = newDetailItem;
	        
	    // Update the view.
	    [self configureView];
	}
}

- (void)configureView {
	// Update the user interface for the detail item.
	if (self.detailItem) {
		self.serviceTextField.text = self.detailItem.service;
	    self.idTextField.text = self.detailItem.id;
		self.passwordTextField.text = self.detailItem.password;
	}
}

- (void)viewDidLoad {
	[super viewDidLoad];

	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(done)];

	[self configureView];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)done {
	self.detailItem.service = self.serviceTextField.text;
	self.detailItem.id = self.idTextField.text;
	self.detailItem.password = self.passwordTextField.text;

	NSError *error = nil;

	if (![self.managedObjectContext save:&error]) {
		NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
		abort();
	}

	if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
		[self.navigationController popViewControllerAnimated:YES];
	}
}

@end
