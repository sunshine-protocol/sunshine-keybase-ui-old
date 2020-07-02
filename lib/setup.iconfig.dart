// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:identity/services/account_details_service.dart';
import 'package:identity/services/account_service.dart';
import 'package:identity/services/path_provider_service.dart';
import 'package:identity/core/register_module.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:identity/services/identity_client_service.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final registerModule = _$RegisterModule();
  g.registerLazySingleton<AccountDetailsService>(() => AccountDetailsService());
  g.registerLazySingleton<AccountService>(() => AccountService());
  final pathProviderService = await registerModule.pathProvider;
  g.registerLazySingleton<PathProviderService>(() => pathProviderService);
  final sharedPreferences = await registerModule.prefs;
  g.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<IdentityClientService>(() =>
      IdentityClientService(pathProviderService: g<PathProviderService>()));
}

class _$RegisterModule extends RegisterModule {}
