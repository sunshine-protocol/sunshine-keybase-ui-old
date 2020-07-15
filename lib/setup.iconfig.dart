// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:identity/services/client/dev_client_service.dart';
import 'package:identity/services/client/client_service.dart';
import 'package:identity/services/device_service.dart';
import 'package:identity/services/identity_service.dart';
import 'package:identity/services/key_service.dart';
import 'package:identity/services/path_provider_service.dart';
import 'package:identity/core/register_module.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:identity/services/wallet_service.dart';
import 'package:identity/services/account_service.dart';
import 'package:identity/services/client/identity_client_service.dart';
import 'package:identity/services/client/prod_client_service.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final registerModule = _$RegisterModule();
  g.registerLazySingleton<DeviceService>(
      () => DeviceService(clientService: g<ClientService>()));
  g.registerLazySingleton<IdentityService>(
      () => IdentityService(clientService: g<ClientService>()));
  g.registerLazySingleton<KeyService>(
      () => KeyService(clientService: g<ClientService>()));
  final pathProviderService = await registerModule.pathProvider;
  g.registerLazySingleton<PathProviderService>(() => pathProviderService);
  final sharedPreferences = await registerModule.prefs;
  g.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<WalletService>(
      () => WalletService(clientService: g<ClientService>()));
  g.registerLazySingleton<AccountService>(() => AccountService(
        clientService: g<ClientService>(),
        identityService: g<IdentityService>(),
        deviceService: g<DeviceService>(),
      ));
  g.registerLazySingleton<IdentityClientService>(() =>
      IdentityClientService(pathProviderService: g<PathProviderService>()));

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerLazySingleton<ClientService>(() => DevClientService());
  }

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<ClientService>(() =>
        ProdClientService(identityClientService: g<IdentityClientService>()));
  }
}

class _$RegisterModule extends RegisterModule {}
