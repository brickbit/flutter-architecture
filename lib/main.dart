import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/app/di/di.dart';
import 'app/app/my_app.dart';
import 'app/util/util.dart';

void main() {

  initInjection();

  runApp(
    DevicePreview(
      enabled: !kReleaseMode && Util().isComputer(),
      builder: (context) => const MyApp(),
    ),
  );
}
