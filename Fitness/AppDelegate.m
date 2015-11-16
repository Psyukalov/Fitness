//
//  AppDelegate.m
//  Fitness
//
//  Created by Admin on 27.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
//    int interval = 60;
//    UILocalNotification *notification = [[UILocalNotification alloc] init];
//    NSUserDefaults *defaults = [[NSUserDefaults alloc] init];
//    NSDate *D = [[NSDate alloc] init];
//    D = [NSDate date];
//    defaults = [NSUserDefaults standardUserDefaults];
//    notification.timeZone = [NSTimeZone systemTimeZone];
//    notification.fireDate = [D dateByAddingTimeInterval:60*60*3+interval];
//    NSLog(@"%@", D);
//    NSLog(@"%@", [D dateByAddingTimeInterval:interval]);
//    NSLog(@"%@", notification.fireDate);
//    notification.alertBody = @"Выпейте воды! Вы давно не пили!";
//    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {

//    [[UIApplication sharedApplication] cancelAllLocalNotifications];

}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
