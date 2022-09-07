#ifndef FLUTTER_PLUGIN_FLUTTER_MEDIA_KEYS_GLOBAL_LISTENER_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_MEDIA_KEYS_GLOBAL_LISTENER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_media_keys_global_listener {

class FlutterMediaKeysGlobalListenerPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterMediaKeysGlobalListenerPlugin();

  virtual ~FlutterMediaKeysGlobalListenerPlugin();

  // Disallow copy and assign.
  FlutterMediaKeysGlobalListenerPlugin(const FlutterMediaKeysGlobalListenerPlugin&) = delete;
  FlutterMediaKeysGlobalListenerPlugin& operator=(const FlutterMediaKeysGlobalListenerPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_media_keys_global_listener

#endif  // FLUTTER_PLUGIN_FLUTTER_MEDIA_KEYS_GLOBAL_LISTENER_PLUGIN_H_
