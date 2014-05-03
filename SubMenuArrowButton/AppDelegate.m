
#import "AppDelegate.h"
#import "MyViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    {
        UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:[[MyViewController alloc] initWithNibName:nil
                                                                                                                                                     bundle:nil]];
        self.window.rootViewController = navigationController;
    }
    [self.window makeKeyAndVisible];
    return YES;
}

@end
