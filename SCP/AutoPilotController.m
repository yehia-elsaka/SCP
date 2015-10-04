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
//    GMSCameraPosition *camera =
//    [GMSCameraPosition cameraWithLatitude:30.731772
//                                longitude:32.339391
//                                     zoom:17.5
//                                  bearing:30
//                             viewingAngle:40];
    mapView_ = [GMSMapView mapWithFrame:CGRectMake(0, 0, 1024, 673) camera:camera];
    mapView_.myLocationEnabled = YES;
    
 

    GMSMutablePath *path = [GMSMutablePath path];
        [path addLatitude:30.731772 longitude:32.339391];
    [path addLatitude:30.732904 longitude:32.339069];
    [path addLatitude:30.733749 longitude:32.338801];
    [path addLatitude:30.735589 longitude:32.338962];
    [path addLatitude:30.736571 longitude:32.338278];
    [path addLatitude:30.738310 longitude:32.337696];
    [path addLatitude:30.740218 longitude:32.337777];
    [path addLatitude:30.741903 longitude:32.336893];
    [path addLatitude:30.744161 longitude:32.336602];
    [path addLatitude:30.746185 longitude:32.335879];
    [path addLatitude:30.751427 longitude:32.334199];
    [path addLatitude:30.757559 longitude:32.332362];
    [path addLatitude:30.760541 longitude:32.332173];
    [path addLatitude:30.763351 longitude:32.330728];
    [path addLatitude:30.766419 longitude:32.330315];
    [path addLatitude:30.769300 longitude:32.329429];
    [path addLatitude:30.773281 longitude:32.328271];
    [path addLatitude:30.779415 longitude:32.326023];
    [path addLatitude:30.784239 longitude:32.324723];
    [path addLatitude:30.787345 longitude:32.325014];
    [path addLatitude:30.791739 longitude:32.323406];
    [path addLatitude:30.801829 longitude:32.320245];
    [path addLatitude:30.813595 longitude:32.318101];
    [path addLatitude:30.825266 longitude:32.317992];
    [path addLatitude:30.826421 longitude:32.318173];
    [path addLatitude:30.840119 longitude:32.317737];
    [path addLatitude:30.851350 longitude:32.315266];
    [path addLatitude:30.871813 longitude:32.316938];
    [path addLatitude:30.885660 longitude:32.314685];
    [path addLatitude:30.907893 longitude:32.313449];
    
    
        [path addLatitude:30.909094 longitude:32.313535];
            [path addLatitude:30.910311 longitude:32.313530];
            [path addLatitude:30.911713 longitude:32.314710];
            [path addLatitude:30.913631 longitude:32.315539];
    [path addLatitude:30.914823 longitude:32.315567];
    [path addLatitude:30.915708 longitude:32.314686];
    [path addLatitude:30.917403 longitude:32.315142];
    [path addLatitude:30.918615 longitude:32.313305];
    [path addLatitude:30.921566 longitude:32.313305];
    [path addLatitude:30.923343 longitude:32.315269];
    [path addLatitude:30.930683 longitude:32.313808];
    [path addLatitude:30.935142 longitude:32.314496];
    [path addLatitude:30.940886 longitude:32.312696];
    [path addLatitude:30.948051 longitude:32.313262];
    [path addLatitude:30.974940 longitude:32.312372];
    [path addLatitude:31.007231 longitude:32.311219];
    [path addLatitude:31.027675 longitude:32.310408];
    [path addLatitude:31.059915 longitude:32.309478];
    [path addLatitude:31.099095 longitude:32.308299];
    [path addLatitude:31.136615 longitude:32.319221];
    [path addLatitude:31.168717 longitude:32.329023];
    [path addLatitude:31.199890 longitude:32.336638];
    [path addLatitude:31.227669 longitude:32.345895];
    [path addLatitude:31.242527 longitude:32.355801];
    
    

    
    GMSPolyline *polyline = [GMSPolyline polylineWithPath:path];
    polyline.strokeColor = [UIColor blueColor];
    polyline.strokeWidth = 5.f;

    polyline.map = mapView_;

    
    
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
    marker.icon = [UIImage imageNamed:@"Blue_Boat"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
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
