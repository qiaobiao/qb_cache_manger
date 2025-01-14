import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:qb_cache_manger/qb_cache_manger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    QbCacheManger.saveCacheData("test", "11111");
    QbCacheManger.removeCacheData("test");
    QbCacheManger.getCacheData("test").then((value) => {
      print("value---$value"),
    });
  }

  //  messages are asynchronous, so we initialize in an async method.
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Container(),
        ),
      ),
    );
  }
}
