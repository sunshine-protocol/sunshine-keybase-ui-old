import 'package:identity/identity.dart';
import 'package:injectable/injectable.dart';

import 'client_service.dart';

@prod
@LazySingleton(as: ClientService)
class ProdClientService implements ClientService {
  ProdClientService({IdentityClientService identityClientService})
      : _identityClientService = identityClientService;
  final IdentityClientService _identityClientService;

  @override
  Future<bool> hasDeviceKey() {
    return _identityClientService.hasDeviceKey();
  }

  @override
  Future<bool> get ready => _identityClientService.ready;
}
