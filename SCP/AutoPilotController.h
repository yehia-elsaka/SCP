//
//  AutoPilotController.h
//  SCP
//
//  Created by Yassin Gamal on 10/4/15.
//  Copyright © 2015 TrianglZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AutoPilotController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *mapView;

- (IBAction)back:(id)sender;


- (IBAction)sendSOS:(id)sender;

@end
