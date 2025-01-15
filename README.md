# qb_cache_manger

1. 仅IOS缓存Flutter插件.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


### API使用

 1:QbCacheManger.saveCacheData("test", "11111");
 2:QbCacheManger.removeCacheData("test");
 3:QbCacheManger.getCacheData("test").then((value) => {
      print("value---$value"),
    });
