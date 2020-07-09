import 'package:injectable/injectable.dart';

import 'client/client_service.dart';

@lazySingleton
class IdentityService {
  IdentityService({ClientService clientService})
      : _clientService = clientService;

  // ignore: unused_field
  final ClientService _clientService;
}
