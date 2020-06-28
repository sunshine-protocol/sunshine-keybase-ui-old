import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:identity/core/core.dart';
import 'package:identity/services/services.dart';

@injectable
class HomeViewModel extends BaseModel {
  HomeViewModel({
    @required this.accountService,
  });
  final AccountService accountService;
  bool hasAccount = false;
  bool isUnlocked = false;
  void checkIfHasAccount() {
    busy();
    idle();
  }
}
