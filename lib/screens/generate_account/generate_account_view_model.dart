import 'package:injectable/injectable.dart';
import 'package:identity/core/core.dart';
import 'package:identity/models/account_model.dart';

@injectable
class GenerateAccountViewModel extends BaseModel {
  AccountBackup accountBackup;
  bool generated = false;
  void generate() {
    busy();
    generated = accountBackup != null;
    idle();
  }
}
