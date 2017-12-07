#import "AppDelegate.h"
#import "AppViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    UIViewController *viewController = [[AppViewController alloc] initWithHelloString: @"Buddybuild sample app 🤷🏻‍"];

    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];

    // Override point for customization after application launch.
    return YES;
}

@end
