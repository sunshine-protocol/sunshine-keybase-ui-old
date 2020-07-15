import 'package:identity/services/services.dart';
import 'package:identity_client/identity_client.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class IdentityClientService extends IdentityClient {
  IdentityClientService({PathProviderService pathProviderService})
      : super(
          root: pathProviderService.applicationDocumentsDirectory,
          chainspecPath: Uri(path: 'assets/chainspec.json'),
        );
}
