import 'dart:io';
import 'package:flutter/foundation.dart';

class Util {
  OperativeSystem getPlatform() {
    if(kIsWeb) {
      return OperativeSystem.web;
    } else if(Platform.isAndroid) {
      return OperativeSystem.android;
    } else if(Platform.isIOS) {
      return OperativeSystem.iOS;
    } else if(Platform.isMacOS) {
      return OperativeSystem.mac;
    } else if(Platform.isLinux) {
      return OperativeSystem.linux;
    } else if(Platform.isWindows) {
      return OperativeSystem.windows;
    } else if(Platform.isFuchsia) {
      return OperativeSystem.fuchsia;
    }
    return OperativeSystem.unknown;
  }

  bool isComputer() {
    OperativeSystem platform = getPlatform();
    return (platform == OperativeSystem.linux || platform == OperativeSystem.mac || platform == OperativeSystem.windows);
  }

}

enum OperativeSystem { android, iOS, web, linux, mac, windows, fuchsia, unknown }