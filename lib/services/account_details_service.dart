import 'package:injectable/injectable.dart';
import 'package:identity/models/models.dart';

@lazySingleton
class AccountDetailsService {
  AccountDetails value = const AccountDetails();
}
