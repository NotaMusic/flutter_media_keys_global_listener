#include "include/flutter_media_keys_global_listener/flutter_media_keys_global_listener_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_media_keys_global_listener_plugin.h"

void FlutterMediaKeysGlobalListenerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_media_keys_global_listener::FlutterMediaKeysGlobalListenerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
