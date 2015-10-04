//
//  AutoPilotController.m
//  SCP
//
//  Created by Yassin Gamal on 10/4/15.
//  Copyright © 2015 TrianglZ. All rights reserved.
//

#import "AutoPilotController.h"
@import GoogleMaps;
@interface AutoPilotController ()

@end

@implementation AutoPilotController
{
     GMSMapView *mapView_;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.30.731772, 32.339391
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:30.731772
                                                            longitude:32.339391
                                                                 zoom:18];
    
    mapView_ = [GMSMapView mapWithFrame:CGRectMake(0, 0, 1024, 673) camera:camera];
    mapView_.myLocationEnabled = YES;

    [self.mapView addSubview:mapView_];
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(30.731772, 32.339391);
    marker.title = @"Australian ship";
    marker.snippet = @"Suez Canal";
    marker.map = mapView_; 
//mapView_.mapType = kGMSTypeHybrid;
//    kGMSTypeTerrain
    marker.appearAnimation = kGMSMarkerAnimationPop;
    marker.icon = [UIImage imageNamed:@"flag_icon"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)back:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
