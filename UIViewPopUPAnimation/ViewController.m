//
//  ViewController.m
//  UIViewPopUPAnimation
//
//  Created by test on 18/10/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    
        UIView *view1;
    
    UIView *view2;
    

  
}

- (void)viewDidLoad {
    
        [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    view1 = [[UIView alloc]initWithFrame:self.view.frame];
    view1.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view1];
    [self.view sendSubviewToBack:view1];
    view2 = self.popUpView;
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void)doTransitionWithType:(UIViewAnimationOptions)animationTransitionType{
//    if ([[self.view subviews] containsObject:self.popUpView ]) {
//        [UIView transitionFromView:self.popUpView
//                            toView:view1
//                          duration:2
//                           options:animationTransitionType
//                        completion:^(BOOL finished){
//                            [self.popUpView removeFromSuperview];
//                        }];
//        [self.view addSubview:view1];
//        [self.view sendSubviewToBack:view1];
//    }
//    else{
//        
//        [UIView transitionFromView:view1
//                            toView:self.popUpView
//                          duration:2
//                           options:animationTransitionType
//                        completion:^(BOOL finished){
//                            [view1 removeFromSuperview];
//                        }];
//        [self.view addSubview:self.popUpView];
//        [self.view sendSubviewToBack:self.popUpView];
//        
//    }
//}
- (IBAction)button:(id)sender {
    
//    [UIView beginAnimations:@"curlup" context:nil];
//    [UIView setAnimationDelegate:self];
//    [UIView setAnimationDuration:.5];
//    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
//    [self.view addSubview:self.popUpView];
//    [UIView commitAnimations];
    
    [UIView transitionWithView:self.popUpView
                      duration:0.8
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        self.popUpView.hidden = NO;
                    }
                    completion:NULL];
 
}





- (IBAction)closePopup:(id)sender {
//    [UIView beginAnimations:@"curldown" context:nil];
//    [UIView setAnimationDelegate:self];
//    [UIView setAnimationDuration:.5];
//    [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:self.view cache:YES];
//    [self.popUpView removeFromSuperview];
//    [UIView commitAnimations];
    [UIView transitionWithView:self.popUpView
                      duration:0.8
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        self.popUpView.hidden = YES;
                    }
                    completion:NULL];
}


@end
