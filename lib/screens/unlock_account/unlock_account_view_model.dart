import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:identity/core/core.dart';
import 'package:identity/services/services.dart';

@injectable
class UnlockAccountViewModel extends BaseModel {
  UnlockAccountViewModel({
    @required this.accountService,
  });
  final AccountService accountService;

  bool unlocked = false;

  void unlock(String password) {
    busy();
    idle();
  }
}
