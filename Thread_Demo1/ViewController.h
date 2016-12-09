//
//  ViewController.h
//  Thread_Demo1
//
//  Created by Student-002 on 16/11/16.
//  Copyright © 2016 Felix-its. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *indicator;
- (IBAction)download:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *imgview;

@end

