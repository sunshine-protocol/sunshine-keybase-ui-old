import 'package:injectable/injectable.dart';

import 'client/client_service.dart';

@lazySingleton
class DeviceService {
  DeviceService({ClientService clientService}) : _clientService = clientService;
  final ClientService _clientService;

  Future<bool> hasDeviceKey() {
    return _clientService.hasDeviceKey();
  }
}
