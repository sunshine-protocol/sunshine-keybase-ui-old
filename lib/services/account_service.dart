import 'package:injectable/injectable.dart';

import 'client/client_service.dart';

@lazySingleton
class AccountService {
  AccountService({ClientService clientService})
      : _clientService = clientService;

  // ignore: unused_field
  final ClientService _clientService;
}
