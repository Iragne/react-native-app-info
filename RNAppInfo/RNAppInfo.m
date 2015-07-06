//
//  RNAppInfo.m
//  RNAppInfo
//
//

#import "RNAppInfo.h"
#import "RCTBridge.h"

@implementation RNAppInfo
RCT_EXPORT_MODULE();



- (NSDictionary *)constantsToExport
{
    NSString *displayName = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"];
    if(displayName == nil)
        displayName = @"";
    return @{
             @"version": [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"],
             @"shortVersion": [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"],
             @"bundleIdentifier": [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIdentifier"],
             @"name": [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleName"],
             @"displayName": displayName,
    };
}
RCT_EXPORT_METHOD(setNetworkActivityIndicatorVisible:(BOOL)active) {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:active];
}

@end
