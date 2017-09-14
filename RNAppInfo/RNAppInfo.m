//
//  RNAppInfo.m
//  RNAppInfo
//
//

#import "RNAppInfo.h"
#ifndef RCT_EXPORT_METHOD
#if __has_include("RCTBridge.h")
#import "RCTBridge.h"
#else
#import <React/RCTBridge.h>
#endif
#endif

@implementation RNAppInfo
RCT_EXPORT_MODULE();



- (NSDictionary *)constantsToExport
{
    NSString *displayName = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"];
    if(displayName == nil)
        displayName = @"";

    NSString *iosVersion = [[UIDevice currentDevice] systemVersion];
    NSString *infoDeviceName = [[UIDevice currentDevice] name];

    return @{
             @"version": [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"],
             @"shortVersion": [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"],
             @"bundleIdentifier": [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIdentifier"],
             @"name": [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleName"],
             @"displayName": displayName,
             @"getInfoiOS":iosVersion,
             @"getInfoDeviceName":infoDeviceName,

    };
}
RCT_EXPORT_METHOD(setNetworkActivityIndicatorVisible:(BOOL)active) {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:active];
}

@end
