import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:identity/core/core.dart';
import 'package:identity/models/account_model.dart';
import 'package:identity/services/services.dart';

@injectable
class AccountPharseConfirmationViewModel extends BaseModel {
  AccountPharseConfirmationViewModel({
    @required this.accountService,
  });
  final AccountService accountService;
  bool backedUp;
  void backup(AccountBackup backup, String phrase) {
    busy();
    idle();
  }
}
