import 'package:injectable/injectable.dart';

import 'client/client_service.dart';

@lazySingleton
class WalletService {
  WalletService({ClientService clientService}) : _clientService = clientService;

  // ignore: unused_field
  final ClientService _clientService;
}
