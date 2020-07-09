import 'package:identity/identity.dart';
import 'package:identity/models/identity/service.dart';
import 'package:injectable/injectable.dart';

import 'client_service.dart';
import 'identity_client_service.dart';

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

  @override
  Future<String> accountId() {
    throw UnimplementedError();
  }

  @override
  Future<String> addPaperKey() {
    throw UnimplementedError();
  }

  @override
  Future<List<String>> identities(String uid) {
    throw UnimplementedError();
  }

  @override
  Future<bool> lock() {
    throw UnimplementedError();
  }

  @override
  Future<ProveIdentityResult> proveIdentity(SocialIdentityService service) {
    throw UnimplementedError();
  }

  @override
  Future<String> setDeviceKey(String password, {String suri, String paperKey}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> unlock(String password) {
    throw UnimplementedError();
  }

  @override
  Future<bool> addDevice(String id) {
    throw UnimplementedError();
  }

  @override
  Future<String> balance() {
    throw UnimplementedError();
  }

  @override
  Future<List<String>> devices() {
    throw UnimplementedError();
  }

  @override
  Future<bool> revokeDevice(String id) {
    throw UnimplementedError();
  }

  @override
  Future<bool> revokeIdentity(SocialIdentityService service) {
    throw UnimplementedError();
  }

  @override
  Future<bool> transfer(String id, String amount) {
    throw UnimplementedError();
  }
}
