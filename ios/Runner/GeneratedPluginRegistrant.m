//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"
#import <appcenter/AppcenterPlugin.h>
#import <appcenter_analytics/AppcenterAnalyticsPlugin.h>
#import <appcenter_crashes/AppcenterCrashesPlugin.h>

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [AppcenterPlugin registerWithRegistrar:[registry registrarForPlugin:@"AppcenterPlugin"]];
  [AppcenterAnalyticsPlugin registerWithRegistrar:[registry registrarForPlugin:@"AppcenterAnalyticsPlugin"]];
  [AppcenterCrashesPlugin registerWithRegistrar:[registry registrarForPlugin:@"AppcenterCrashesPlugin"]];
}

@end
