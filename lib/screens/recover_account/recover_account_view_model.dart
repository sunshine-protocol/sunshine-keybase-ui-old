import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:identity/core/core.dart';
import 'package:identity/services/services.dart';

@injectable
class RecoverAccountViewModel extends BaseModel {
  RecoverAccountViewModel({
    @required this.accountService,
  });
  final AccountService accountService;

  bool recovered = false;
  String password;
  String phrase;
  void recover() {
    busy();

    idle();
  }

  void setPassword(String v) {
    busy();
    password = v;
    idle();
  }

  void setPharse(String v) {
    busy();
    phrase = v;
    idle();
  }
}
