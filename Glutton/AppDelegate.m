//
//  AppDelegate.m
//  Glutton
//
//  Created by Tyler on 4/1/15.
//  Copyright (c) 2015 TylerCo. All rights reserved.
//

#import "AppDelegate.h"
#import "SLPagingViewController.h"
#import "UIColor+SLAddition.h"
#import "YelpYapper.h"

@interface AppDelegate ()

@property (strong, nonatomic) UINavigationController *nav;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    for (NSString * family in [UIFont familyNames]) {
        NSLog(@"%@", family);
        
        for (NSString *name in [UIFont fontNamesForFamilyName:family]) {
            NSLog(@"  %@", name);
        }
    }
    // Override point for customization after application launch.
//    [YelpYapper getBusinesses];
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    
//    UIColor *gray = [UIColor colorWithRed: 0.5 green: 0.5 blue: 0.5 alpha: 1];
//    UIColor *orange = [UIColor colorWithRed: 0.749 green: 0.341 blue: 0 alpha: 1];
    
    // Make views for the navigation bar
    
//    UIImageView *img1 = [[UIImageView alloc] initWithImage:[[UIImage imageNamed:@"user"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
//    
//    UIImageView *img2 = [[UIImageView alloc] initWithImage:[[UIImage imageNamed:@"swipe"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
//    
//    UIImageView *img3 = [[UIImageView alloc] initWithImage:[[UIImage imageNamed:@"collection"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    
//    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
//    self.summary = (SummaryViewController *)[mainStoryboard instantiateViewControllerWithIdentifier:@"summary"];
    
//    self.swipe = (SwipeViewController *)[mainStoryboard instantiateViewControllerWithIdentifier:@"swipe"];
//    self.swipe = [SwipeViewController new];
    
//    self.collection = (SummaryViewController *)[mainStoryboard instantiateViewControllerWithIdentifier:@"summary"];
    
//    self.collection = (FalseCollectionViewController *)[mainStoryboard instantiateViewControllerWithIdentifier:@"collection"];

    
//    SLPagingViewController *pageViewController = [[SLPagingViewController alloc] initWithNavBarItems:@[img1, img2, img3]
//                                                                                    navBarBackground:[UIColor whiteColor] views:@[self.summary.view, self.swipe.view, self.collection.view]
//                                                                                     showPageControl:NO];
//    
//    [pageViewController addChildViewController:self.summary];
//    [pageViewController addChildViewController:self.swipe];
//    [pageViewController addChildViewController:self.collection];

    
//    pageViewController.navigationSideItemsStyle = SLNavigationSideItemsStyleOnBounds;
//    float minX = 45.0;
//    pageViewController.pagingViewMoving = ^(NSArray *subviews){
//        float mid  = [UIScreen mainScreen].bounds.size.width/2 - minX;
//        float midM = [UIScreen mainScreen].bounds.size.width - minX;
//        for(UIImageView *v in subviews){
//            UIColor *c = gray;
//            if(v.frame.origin.x > minX
//               && v.frame.origin.x < mid)
//                // Left part
//                c = [UIColor gradient:v.frame.origin.x
//                                  top:minX+1
//                               bottom:mid-1
//                                 init:orange
//                                 goal:gray];
//            else if(v.frame.origin.x > mid
//                    && v.frame.origin.x < midM)
//                // Right part
//                c = [UIColor gradient:v.frame.origin.x
//                                  top:mid+1
//                               bottom:midM-1
//                                 init:gray
//                                 goal:orange];
//            else if(v.frame.origin.x == mid)
//                c = orange;
//            v.tintColor= c;
//        }
//    };
//    
//    [pageViewController setCurrentIndex:1 animated:YES];
//    
//    self.nav = [[UINavigationController alloc] initWithRootViewController:pageViewController];
//    [self.window setRootViewController:self.nav];
//    UITabBarController *tabBar = [[UITabBarController alloc] init];
//    tabBar.viewControllers = @[self.summary, self.swipe, self.summary];
//    UIViewController *controller = [UIViewController new];
//    [controller.view addSubview:tabBar.view];
//    [self.window setRootViewController:controller];
//    self.window.backgroundColor = [UIColor whiteColor];
//    [self.window makeKeyAndVisible];
    
//    [self.window setRootViewController:[SwipeViewController new]];
//    [self setWindow:self.window];
//    [self.window.rootViewController.tabBarController setSelectedIndex:1];
    return YES;
}

-(UIView *)viewWithBackground:(UIColor *)color {
    UIView *view = [UIView new];
    view.backgroundColor = color;
    return view;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
