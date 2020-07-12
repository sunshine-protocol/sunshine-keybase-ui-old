import 'package:identity/models/models.dart';

abstract class ClientService {
  Future<bool> get ready;
  Future<String> deviceId();
  Future<String> uid();
  Future<bool> lock();
  Future<bool> unlock(String password);
  Future<bool> hasDeviceKey();
  Future<String> setDeviceKey(String password, {String suri, String paperKey});
  Future<List<String>> identities(String uid);
  Future<ProveIdentityResult> proveIdentity(SocialIdentityService service);
  Future<bool> revokeIdentity(SocialIdentityService service);
  Future<List<String>> devices();
  Future<String> addPaperKey();
  Future<bool> addDevice(String id);
  Future<bool> revokeDevice(String id);
  Future<String> balance();
  Future<bool> transfer(String id, int amount);
  Future<int> mint(String id);
}

class ProveIdentityResult {
  const ProveIdentityResult(this.instructions, this.proof);
  final String instructions;
  final String proof;
}
