import 'package:injectable/injectable.dart';

import 'client_service.dart';

@dev
@LazySingleton(as: ClientService)
class DevClientService implements ClientService {
  @override
  Future<bool> hasDeviceKey() async {
    return false;
  }

  @override
  Future<bool> get ready => Future.delayed(
        const Duration(seconds: 2),
        () => true,
      );
}
