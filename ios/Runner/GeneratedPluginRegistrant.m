//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<firebase_core/FLTFirebaseCorePlugin.h>)
#import <firebase_core/FLTFirebaseCorePlugin.h>
#else
@import firebase_core;
#endif

#if __has_include(<firebase_remote_config/FLTFirebaseRemoteConfigPlugin.h>)
#import <firebase_remote_config/FLTFirebaseRemoteConfigPlugin.h>
#else
@import firebase_remote_config;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FLTFirebaseCorePlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTFirebaseCorePlugin"]];
  [FLTFirebaseRemoteConfigPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTFirebaseRemoteConfigPlugin"]];
}

@end
