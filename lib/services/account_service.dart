import 'package:identity/models/models.dart';
import 'package:injectable/injectable.dart';

import 'client/client_service.dart';

@lazySingleton
class AccountService {
  AccountService({ClientService clientService})
      : _clientService = clientService;

  final ClientService _clientService;

  Future<Account> currentAccount() async {
    final uid = await _clientService.uid();
    final deviceId = await _clientService.deviceId();
    final device = Device(id: deviceId, currentDevice: true);
    final devices = await _clientService.devices();
    return Account(
      devices: [device, ...devices.map((i) => Device(id: i))],
      uid: uid,
      identities: [],
    );
  }
}
