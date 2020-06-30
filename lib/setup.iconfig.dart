// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:identity/services/account_details_service.dart';
import 'package:identity/services/account_service.dart';
import 'package:identity/screens/generate_account/generate_account_view_model.dart';
import 'package:identity/screens/home/home_view_model.dart';
import 'package:identity/services/path_provider_service.dart';
import 'package:identity/core/register_module.dart';
import 'package:identity/screens/recover_account/recover_account_view_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:identity/screens/unlock_account/unlock_account_view_model.dart';
import 'package:identity/ui/account_details_form/account_details_form_view_model.dart';
import 'package:identity/screens/account_pharse_confirmation/account_pharse_confirmation_view_model.dart';
import 'package:identity/services/identity_client_service.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final registerModule = _$RegisterModule();
  g.registerLazySingleton<AccountDetailsService>(() => AccountDetailsService());
  g.registerLazySingleton<AccountService>(() => AccountService());
  g.registerFactory<GenerateAccountViewModel>(() => GenerateAccountViewModel());
  g.registerFactory<HomeViewModel>(
      () => HomeViewModel(accountService: g<AccountService>()));
  final pathProviderService = await registerModule.pathProvider;
  g.registerLazySingleton<PathProviderService>(() => pathProviderService);
  g.registerFactory<RecoverAccountViewModel>(
      () => RecoverAccountViewModel(accountService: g<AccountService>()));
  final sharedPreferences = await registerModule.prefs;
  g.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  g.registerFactory<UnlockAccountViewModel>(
      () => UnlockAccountViewModel(accountService: g<AccountService>()));
  g.registerFactory<AccountDetailsFormViewModel>(() =>
      AccountDetailsFormViewModel(
          accountDetailsService: g<AccountDetailsService>()));
  g.registerFactory<AccountPharseConfirmationViewModel>(() =>
      AccountPharseConfirmationViewModel(accountService: g<AccountService>()));
  g.registerLazySingleton<IdentityClientService>(() =>
      IdentityClientService(pathProviderService: g<PathProviderService>()));
}

class _$RegisterModule extends RegisterModule {}
