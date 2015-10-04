//
//  MainViewController.m
//  SCP
//
//  Created by mac on 10/3/15.
//  Copyright (c) 2015 TrianglZ. All rights reserved.
//

#import "MainViewController.h"
#import "AutoPilotController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setNeedsStatusBarAppearanceUpdate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"SOS"]) {
        
        // Get destination view
        AutoPilotController *autoPilot = [segue destinationViewController];
        
        bool SOSRecieved = YES;
        [[NSUserDefaults standardUserDefaults] setBool:SOSRecieved forKey:@"SOS"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)sendSOS:(id)sender {
    
     [self performSegueWithIdentifier:@"SOS" sender:sender];
}
@end
