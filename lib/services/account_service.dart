import 'package:identity/services/services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AccountService {
  AccountService({IdentityClientService identityClientService})
      : _identityClientService = identityClientService;

  final IdentityClientService _identityClientService;

  Future<bool> hasDeviceKey() {
    return _identityClientService.hasDeviceKey();
  }
}
