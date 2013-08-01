//
//  ViewController.m
//  testImageEffact
//
//  Created by justin jing on 13-8-1.
//  Copyright (c) 2013年 justin jing. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ImageEffects.h"

@interface ViewController ()
 

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  
	// Do any additional setup after loading the view, typically from a nib.
    for (int i=0; i<2; i++)
    {
        for (int j=0; j<2; j++)
        {
            UIImage *tt=[UIImage imageNamed:@"test.png"];
            UIImageView *testImageView; testImageView=[[UIImageView alloc]initWithFrame:CGRectMake(i*160,j*240,160, 240)];
            if (i==0)
            {
                if (j==0)
                {
                      testImageView.image=tt;
                }else
                {
                 testImageView.image=[tt applyExtraLightEffect];
                }
            }
            else{
                if (j==0) {
                    testImageView.image=[tt applyLightEffect];
                }else
                {
                    testImageView.image=[tt applyDarkEffect];
                }
            }
 
            [self.view addSubview:testImageView];
        }
 
    }
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
