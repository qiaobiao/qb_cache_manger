#import "QbCacheMangerPlugin.h"
#import "QBCommonCacheManger.h"

@implementation QbCacheMangerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"qb_cache_manger"
            binaryMessenger:[registrar messenger]];
  QbCacheMangerPlugin* instance = [[QbCacheMangerPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getCacheData" isEqualToString:call.method]) {
    id getCacheData=[QBCommonCacheManger ReadObjectFormUserDefaultsWithKey:[call.arguments objectForKey:@"key"]];
    result(getCacheData);
  }else if([@"removeCacheData" isEqualToString:call.method]){
    [QBCommonCacheManger DeleteObjectFromUserDefaultsWithKey:[call.arguments objectForKey:@"key"]];
  }else if([@"saveCacheData" isEqualToString:call.method]){
    [QBCommonCacheManger WriteObjectToUserDefaults:[call.arguments objectForKey:@"value"] forKey:[call.arguments objectForKey:@"key"]];
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
