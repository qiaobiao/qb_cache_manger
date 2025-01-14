
import 'package:flutter/services.dart';


class QbCacheManger {

  static const methodChannel =  MethodChannel('qb_cache_manger');

  
  ///开始存储
  static void saveCacheData(String cacheKey, dynamic currentData) {
    var arguments = {};
    arguments["key"] = cacheKey;
    arguments["value"] = currentData;
    methodChannel.invokeMethod("saveCacheData", arguments);
  }

  //获取缓存数据
  static Future<dynamic> getCacheData(String cacheKey) {
    var arguments = {};
    arguments["key"] = cacheKey;
    return methodChannel.invokeMethod("getCacheData", arguments);
  }

  //清除数据
  static void removeCacheData(String cacheKey) {
    var arguments = {};
    arguments["key"] = cacheKey;
    methodChannel.invokeMethod("removeCacheData", arguments);
  }

}
