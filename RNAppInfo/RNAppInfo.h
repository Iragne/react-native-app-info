//
//  RNAppInfo.h
//  RNAppInfo
//
//

#import <Foundation/Foundation.h>
#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif
#if __has_include("RCTLog.h")
#import "RCTLog.h"
#else
#import <React/RCTLog.h>
#endif

@interface RNAppInfo : NSObject <RCTBridgeModule>
@end
