import 'package:identity/services/services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AccountService {
  AccountService({IdentityClientService identityClientService})
      : _identityClientService = identityClientService;

  final IdentityClientService _identityClientService;
  Future<bool> hasDeviceKey() async {
    if (!_identityClientService.isReady) {
      await _identityClientService.startUpClient();
    }
    return _identityClientService.hasDeviceKey();
  }
}
