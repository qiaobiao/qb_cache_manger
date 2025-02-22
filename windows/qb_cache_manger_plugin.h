#ifndef FLUTTER_PLUGIN_QB_CACHE_MANGER_PLUGIN_H_
#define FLUTTER_PLUGIN_QB_CACHE_MANGER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace qb_cache_manger {

class QbCacheMangerPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  QbCacheMangerPlugin();

  virtual ~QbCacheMangerPlugin();

  // Disallow copy and assign.
  QbCacheMangerPlugin(const QbCacheMangerPlugin&) = delete;
  QbCacheMangerPlugin& operator=(const QbCacheMangerPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace qb_cache_manger

#endif  // FLUTTER_PLUGIN_QB_CACHE_MANGER_PLUGIN_H_
