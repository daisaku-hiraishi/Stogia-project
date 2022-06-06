
import 'dart:async';

import 'package:flutter/services.dart';

class Stogia {
  static const MethodChannel _channel = MethodChannel('stogia');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
