import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:identity/core/core.dart';
import 'package:identity/models/models.dart';
import 'package:identity/services/services.dart';

@injectable
class AccountDetailsFormViewModel extends BaseModel {
  AccountDetailsFormViewModel({
    @required AccountDetailsService accountDetailsService,
  }) : _accountDetailsService = accountDetailsService;

  final AccountDetailsService _accountDetailsService;
  AccountDetails get accountDetails => _accountDetailsService.value;
  void update(AccountDetails details) {
    busy();
    _accountDetailsService.value = details;
    idle();
  }
}
