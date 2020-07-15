import 'package:identity/models/models.dart';
import 'package:injectable/injectable.dart';

import 'client/client_service.dart';

@lazySingleton
class IdentityService {
  IdentityService({ClientService clientService})
      : _clientService = clientService;

  final ClientService _clientService;

  Future<String> uidOf(String id) {
    return _clientService.uidOf(id);
  }

  Future<List<SocialIdentityService>> identities(String uid) {
    return _clientService.identities(uid).then(
          (ids) => ids.map(_parse).toList(),
        );
  }

  Future<ProveIdentityResult> proveIdentity(SocialIdentityService service) {
    return _clientService.proveIdentity(service);
  }

  Future<bool> revokeIdentity(SocialIdentityService service) {
    return _clientService.revokeIdentity(service);
  }

  SocialIdentityService _parse(String identity) {
    print(identity);
    return GithubIdentity(username: 'shekohex', proofUrl: '');
  }
}
