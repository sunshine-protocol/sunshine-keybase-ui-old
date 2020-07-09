import 'package:identity/models/models.dart';
import 'package:injectable/injectable.dart';

import 'client/client_service.dart';

@lazySingleton
class KeyService {
  KeyService({ClientService clientService}) : _clientService = clientService;

  final ClientService _clientService;

  Future<bool> lock() {
    return _clientService.lock();
  }

  Future<bool> unlock(String password) {
    return _clientService.unlock(password);
  }

  Future<Account> generate(String password) async {
    final uid = await _clientService.setDeviceKey(password);
    final deviceId = await _clientService.deviceId();
    final device = Device(id: deviceId, currentDevice: true);
    return Account(devices: [device], uid: uid, identities: []);
  }

  Future<Account> restore(String password, String paperKey) async {
    final uid = await _clientService.setDeviceKey(password, paperKey: paperKey);
    final deviceId = await _clientService.deviceId();
    final device = Device(id: deviceId, currentDevice: true);
    return Account(devices: [device], uid: uid, identities: []);
  }
}
