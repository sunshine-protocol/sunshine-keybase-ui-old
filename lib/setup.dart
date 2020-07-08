import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:identity/setup.iconfig.dart';

@injectableInit
Future<void> configureDependencies({Environment environment}) =>
    $initGetIt(GetIt.I, environment: environment.name);
