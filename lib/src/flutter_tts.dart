import 'dart:async';

import 'package:flutter/services.dart';

class FlutterTts {
  static const MethodChannel _channel = MethodChannel('flutter_tts');

  Future<dynamic> speak(String text) async {
    return await _channel.invokeMethod('speak', text);
  }

  Future<dynamic> stop() async {
    return await _channel.invokeMethod('stop');
  }

  Future<dynamic> setLanguage(String language) async {
    return await _channel.invokeMethod('setLanguage', language);
  }

  Future<dynamic> setSpeechRate(double rate) async {
    return await _channel.invokeMethod('setSpeechRate', rate);
  }

  Future<dynamic> setPitch(double pitch) async {
    return await _channel.invokeMethod('setPitch', pitch);
  }
}
