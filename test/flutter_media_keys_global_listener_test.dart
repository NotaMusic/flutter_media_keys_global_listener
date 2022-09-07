import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_media_keys_global_listener/flutter_media_keys_global_listener.dart';
import 'package:flutter_media_keys_global_listener/flutter_media_keys_global_listener_platform_interface.dart';
import 'package:flutter_media_keys_global_listener/flutter_media_keys_global_listener_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterMediaKeysGlobalListenerPlatform 
    with MockPlatformInterfaceMixin
    implements FlutterMediaKeysGlobalListenerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterMediaKeysGlobalListenerPlatform initialPlatform = FlutterMediaKeysGlobalListenerPlatform.instance;

  test('$MethodChannelFlutterMediaKeysGlobalListener is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterMediaKeysGlobalListener>());
  });

  test('getPlatformVersion', () async {
    FlutterMediaKeysGlobalListener flutterMediaKeysGlobalListenerPlugin = FlutterMediaKeysGlobalListener();
    MockFlutterMediaKeysGlobalListenerPlatform fakePlatform = MockFlutterMediaKeysGlobalListenerPlatform();
    FlutterMediaKeysGlobalListenerPlatform.instance = fakePlatform;
  
    expect(await flutterMediaKeysGlobalListenerPlugin.getPlatformVersion(), '42');
  });
}
