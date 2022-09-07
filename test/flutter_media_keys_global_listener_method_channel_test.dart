import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_media_keys_global_listener/flutter_media_keys_global_listener_method_channel.dart';

void main() {
  MethodChannelFlutterMediaKeysGlobalListener platform = MethodChannelFlutterMediaKeysGlobalListener();
  const MethodChannel channel = MethodChannel('flutter_media_keys_global_listener');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
