import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_media_keys_global_listener_platform_interface.dart';

/// An implementation of [FlutterMediaKeysGlobalListenerPlatform] that uses method channels.
class MethodChannelFlutterMediaKeysGlobalListener extends FlutterMediaKeysGlobalListenerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_media_keys_global_listener');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
