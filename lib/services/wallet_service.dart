import 'package:injectable/injectable.dart';

import 'client/client_service.dart';

@lazySingleton
class WalletService {
  WalletService({ClientService clientService}) : _clientService = clientService;

  final ClientService _clientService;

  Future<String> balance() {
    return _clientService.balance();
  }

  Future<String> transfer(String to, int amount) {
    return _clientService.transfer(to, amount);
  }
}
