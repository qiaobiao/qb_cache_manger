#include "include/qb_cache_manger/qb_cache_manger_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "qb_cache_manger_plugin.h"

void QbCacheMangerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  qb_cache_manger::QbCacheMangerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
