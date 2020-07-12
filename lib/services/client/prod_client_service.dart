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
  Future<String> deviceId() async {
    return _identityClientService.deviceId();
  }

  @override
  Future<String> addPaperKey() {
    throw UnimplementedError();
  }

  @override
  Future<List<String>> identities(String uid) async {
    return [];
  }

  @override
  Future<bool> lock() {
    return _identityClientService.lock();
  }

  @override
  Future<ProveIdentityResult> proveIdentity(SocialIdentityService service) {
    throw UnimplementedError();
  }

  @override
  Future<String> setDeviceKey(String password,
      {String suri, String paperKey}) async {
    return _identityClientService.setDeviceKey(
      password,
      suri: suri,
      paperKey: paperKey,
    );
  }

  @override
  Future<bool> unlock(String password) {
    return _identityClientService.unlock(password);
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
  Future<List<String>> devices() async {
    return [];
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
  Future<bool> transfer(String id, int amount) {
    throw UnimplementedError();
  }

  @override
  Future<String> uid() async {
    final did = await deviceId();
    return _identityClientService.uid(did);
  }

  @override
  Future<int> mint(String id) {
    return _identityClientService.mint(id);
  }
}
