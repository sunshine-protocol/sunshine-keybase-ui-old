import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:identity/setup.iconfig.dart';

@injectableInit
Future configure() async => await $initGetIt(GetIt.I);

List<SingleChildWidget> providers = [
  Provider.value(value: 42), // A temp provider to make it happy
];
