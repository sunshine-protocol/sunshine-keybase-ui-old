import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:isolate/ports.dart';

import 'constants.dart' as ffi;
import 'ffi.dart' as ffi;

class IdentityClient {
  IdentityClient({@required Directory root}) : _root = root {
    ffi.store_dart_post_cobject(NativeApi.postCObject);
  }

  bool get isReady => _isReady;

  final Directory _root;
  bool _isReady = false;

  Future<bool> startUpClient() {
    final path = Utf8.toUtf8(_root.path);
    final completer = Completer<int>();
    final port = singleCompletePort(completer);
    final result = ffi.client_init(port.nativePort, path);
    assert(result == ffi.ok);
    return _clientInitOkay(completer.future);
  }

  Future<bool> lock() {
    final completer = Completer<int>();
    final port = singleCompletePort(completer);
    final result = ffi.client_lock(port.nativePort);
    assert(result == ffi.ok);
    return completer.future.then((value) => value == ffi.lockedOk);
  }

  Future<bool> unlock(String password) {
    final completer = Completer<int>();
    final port = singleCompletePort(completer);
    final pass = Utf8.toUtf8(password);
    final result = ffi.client_unlock(port.nativePort, pass);
    assert(result == ffi.ok);
    return completer.future.then((value) => value == ffi.unlockedOk);
  }

  Future<bool> hasDeviceKey() {
    final completer = Completer<bool>();
    final port = singleCompletePort(completer);
    final result = ffi.client_has_device_key(port.nativePort);
    assert(result == ffi.ok);
    return completer.future.then((value) => value);
  }

  Future<bool> _clientInitOkay(FutureOr<int> f) async {
    final start = DateTime.now();
    final res = await f;
    final end = DateTime.now();
    final elapsed = end.difference(start);
    print(
      'Client Fully Sync in:\n'
      '\t=> ${elapsed.inMinutes} min\n'
      '\t=> ${elapsed.inSeconds} sec\n',
    );
    _isReady = res == ffi.ok;
    return res == ffi.ok;
  }
}
