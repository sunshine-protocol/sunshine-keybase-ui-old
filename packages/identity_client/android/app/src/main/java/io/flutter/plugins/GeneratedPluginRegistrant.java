package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import foundation.sunshine.frusty_logger.FrustyLoggerPlugin;
import foundation.sunshine.identity_client.IdentityClientPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    FrustyLoggerPlugin.registerWith(registry.registrarFor("foundation.sunshine.frusty_logger.FrustyLoggerPlugin"));
    IdentityClientPlugin.registerWith(registry.registrarFor("foundation.sunshine.identity_client.IdentityClientPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}
