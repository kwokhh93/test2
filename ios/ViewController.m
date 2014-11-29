//
//  ViewController.m
//  ios
//
//  Created by kevinkwok on 29/11/2014.
//  Copyright (c) 2014年 kevinkwok. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController
int a = 0;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Reminder" message:@" Default username: kwokhohei \n Default password: abc12345" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if ( a == 0 )
    {
        [alert show];
        a=1;
    }
    
    
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)LogIn:(id)sender {
    
    if (self.U_Field.text.length<8){
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"username should be at least 8 characters in length and alphabetic and/or the username is not correct" delegate:nil cancelButtonTitle:@"Please Correct" otherButtonTitles:nil];
        [alert show];
    }
    else if (self.P_Field.text.length<8)
    {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Password" message:@"password is at least 8 characters in length" delegate:nil cancelButtonTitle:@"Please Correct" otherButtonTitles:nil];
        
        [alert show];
    }
    
    
    else  if ([self.U_Field.text isEqualToString:@"kwokhohei" ] && [self.P_Field.text isEqualToString:@"abc12345" ])
    {
        SecondViewController *Change = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"SecondViewController"];
        [self presentViewController:Change animated:YES completion:^(void) {
            
        }];
        
        
    }
    
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"the username and/or password is/are not vaild." delegate:nil cancelButtonTitle:@"Please Correct" otherButtonTitles:nil];
        
        [alert show];
    }
    
    
    
}



- (IBAction)U_Field:(UITextField *)sender {
}

- (IBAction)P_Field:(id)sender {
}



@end
