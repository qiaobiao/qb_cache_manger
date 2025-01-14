//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <qb_cache_manger/qb_cache_manger_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) qb_cache_manger_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "QbCacheMangerPlugin");
  qb_cache_manger_plugin_register_with_registrar(qb_cache_manger_registrar);
}
