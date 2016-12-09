//
//  ViewController.m
//  Thread_Demo1
//
//  Created by Student-002 on 16/11/16.
//  Copyright © 2016 Felix-its. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)download:(id)sender {
    
    
    NSString *imgpath=@"http://www.freedigitalphotos.net/images/img/homepage/87357.jpg";
    [_indicator startAnimating];
    
    [NSThread detachNewThreadSelector:@selector(downloadImage:) toTarget:self withObject:imgpath];
    
}

-(void)downloadImage :(NSString *)imagepath
{
    NSURL *url=[NSURL URLWithString:imagepath];
    NSData *data=[NSData dataWithContentsOfURL:url];
    
    UIImage *img=[UIImage imageWithData:data];
    
    
    
    [self performSelectorOnMainThread:@selector(UpdateUI:) withObject:img waitUntilDone:NO];
}

-(void)UpdateUI :(UIImage *)img
{
    self.imgview.image=img;
    [_indicator stopAnimating];
}





@end
