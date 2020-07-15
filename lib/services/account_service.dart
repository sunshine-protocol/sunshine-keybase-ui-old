import 'package:identity/identity.dart';
import 'package:identity/models/models.dart';
import 'package:injectable/injectable.dart';

import 'client/client_service.dart';

@lazySingleton
class AccountService {
  AccountService(
      {ClientService clientService,
      IdentityService identityService,
      DeviceService deviceService})
      : _clientService = clientService,
        _identityService = identityService,
        _deviceService = deviceService;

  final ClientService _clientService;
  final IdentityService _identityService;
  final DeviceService _deviceService;

  Future<Account> currentAccount() async {
    final uid = await _clientService.uid();
    final deviceId = await _clientService.deviceId();
    final device = Device(id: deviceId, currentDevice: true);
    final devices = await _deviceService.devices();
    devices.removeWhere((element) => element.id == deviceId);
    final identities = await _identityService.identities(uid);
    return Account(
      devices: [device, ...devices],
      uid: uid,
      identities: identities,
    );
  }
}
