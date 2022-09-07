import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_media_keys_global_listener_method_channel.dart';

abstract class FlutterMediaKeysGlobalListenerPlatform extends PlatformInterface {
  /// Constructs a FlutterMediaKeysGlobalListenerPlatform.
  FlutterMediaKeysGlobalListenerPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterMediaKeysGlobalListenerPlatform _instance = MethodChannelFlutterMediaKeysGlobalListener();

  /// The default instance of [FlutterMediaKeysGlobalListenerPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterMediaKeysGlobalListener].
  static FlutterMediaKeysGlobalListenerPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterMediaKeysGlobalListenerPlatform] when
  /// they register themselves.
  static set instance(FlutterMediaKeysGlobalListenerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
