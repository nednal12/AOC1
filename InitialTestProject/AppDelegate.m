//
//  AppDelegate.m
//  InitialTestProject
//
//  Created by Brent Marohnic on 11/20/12.
//  Copyright (c) 2012 Brent Marohnic. All rights reserved.
//
//  Apple Programming Language: Objective C 1
//  Full Sail University
//  Term 1212
//  Section 01

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // Deliverable 1.
    // Create a new Empty Application Project.
    // This is the empty project.
    
    
    // Deliverable 2.
    // Create a variable using the float data type. Cast the float to an int and using NSLog, output both the initial float value as well as the int value.
    NSLog(@"Attempting to teach my five year old son the difference between truncating and rounding.");
    
    float fltTwo = 10.50f;
    int intTwo;
    int intTwo1;
    
    intTwo = (int)fltTwo;
    intTwo1 = round(fltTwo);
    
    NSLog(@"Begin by taking the amount %.2f. Simply removing the decimal portion results in the truncated value of %d. However, because the decimal portion is at least half way to the next integer value, it is more common to round up to %d.", fltTwo, intTwo, intTwo1);
    
    // Deliverable 3.
    // Perform an AND, OR comparison. Use float, int and BOOL types. BOOL values should be YES or NO and written in all caps.
    // AND
    // Deliverable 4.
    // // Use an if, else if and else check using any of the data types of your choice.
    
    NSLog(@"Attempting to teach my five year old son the meanings of rewards and consequences.");
    
    int wordsSpelledCorrectly = 9;
    float gradeOntest = 90.5f;
    BOOL madeHisBed = TRUE;
    BOOL brushedHisTeeth = TRUE;
    
    if ((madeHisBed) && (brushedHisTeeth))
    {
        NSLog(@"We're on our way to Disney World.");
    }
    else if ((madeHisBed) || (brushedHisTeeth))
    {
        NSLog(@"We can stay up late and watch a movie.");
    }
    else
    {
        NSLog(@"Looks like we have to stay home.");
    }
    
    
    if ((wordsSpelledCorrectly >= 8) && (gradeOntest >= 90))
    {
        NSLog(@"Going to go see 'Wreck it Ralph'.");
    }
    else if ((wordsSpelledCorrectly >= 8) || (gradeOntest >= 90))
    {
        NSLog(@"Looks like we have some studying to do.");
    }
    else
    {
        NSLog(@"Need to hire a tutor.");
    }
    
    
    // Deliverable 5.
    // Perform a single for loop printing out values to the console.
    
    NSLog(@"How much allowance is earned by doing chores for an entire month?");
    int weeklyAllowance = 5;
    int weekNumber;
    int weeksInAMonth = 4;
    int totalSoFar = 0;
    
    for (weekNumber=1; weekNumber <= weeksInAMonth; weekNumber++)
    {
        totalSoFar = totalSoFar + weeklyAllowance;
        NSLog(@"At the end of week %d you will have %d dollars", weekNumber, totalSoFar);

    }
    
    // Deliverable 6.
    // Perform a nested loop printing out values to the console.
    
    NSLog(@"Let's teach him about compound interest in a bank account.");
    
    float fltPrinciple = 1000.0f;
    float fltInterest = 1.005f;
    
    for (int dayOfTheWeek=1; dayOfTheWeek <= 7; dayOfTheWeek++)
    {
        if ((dayOfTheWeek == 1) || (dayOfTheWeek == 7))
        {
            NSLog(@"It's the weekend. Interest isn't earned today.");
        }
        else
        {
            for (int hourOfTheDay = 1; hourOfTheDay <= 8; hourOfTheDay++)
            {
                fltPrinciple = fltPrinciple * fltInterest;
                NSLog(@"After %d hour(s) the principle has grown to %.2f ", hourOfTheDay, fltPrinciple);
            }
        }
    }

    
    // Deliverable 7.
    // Perform a while loop that increments an int variable and outputs to the console.
    
    NSLog(@"Running out of ideas. Let's count birthdays.");
    
    int yearsOld = 0;
    
    while (yearsOld <= 18)
    {
        NSLog(@"After this birthday he'll be %d year(s) old.", yearsOld);
        yearsOld++;
    } 
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
