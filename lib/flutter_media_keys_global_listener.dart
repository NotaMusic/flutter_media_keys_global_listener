
import 'flutter_media_keys_global_listener_platform_interface.dart';

class FlutterMediaKeysGlobalListener {
  Future<String?> getPlatformVersion() {
    return FlutterMediaKeysGlobalListenerPlatform.instance.getPlatformVersion();
  }
}
