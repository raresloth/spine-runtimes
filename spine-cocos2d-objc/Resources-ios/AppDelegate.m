
#import "cocos2d.h"
#import "AppDelegate.h"
#import "SpineboyExample.h"

@implementation AppController

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    CCFileUtils* sharedFileUtils = [CCFileUtils sharedFileUtils];
    
    sharedFileUtils.searchPath =
    [NSArray arrayWithObjects:
     [[[NSBundle bundleForClass:[self class]] resourcePath] stringByAppendingPathComponent:@"Images"],
     [[[NSBundle bundleForClass:[self class]] resourcePath] stringByAppendingPathComponent:@"Fonts"],
     [[[NSBundle bundleForClass:[self class]] resourcePath] stringByAppendingPathComponent:@"Resources-shared"],
     [[NSBundle bundleForClass:[self class]] resourcePath],
     nil];
    
    [self setupCocos2dWithOptions:@{
            CCSetupDepthFormat: @GL_DEPTH24_STENCIL8,
//          CCSetupTabletScale2X: @YES,
//			CCSetupScreenMode: CCScreenModeFixed,
//			CCSetupScreenOrientation: CCScreenOrientationPortrait,
  			CCSetupShowDebugStats: @YES,
		}];
    
    [[CCDirector sharedDirector] runWithScene:[SpineboyExample scene]];
    
    return YES;
}

//- (CCScene*) startScene {
//    return [SpineboyExample scene];
//}

@end
