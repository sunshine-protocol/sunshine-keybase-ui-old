import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:isolate/ports.dart';

import 'constants.dart' as ffi;
import 'ffi.dart' as ffi;

class IdentityClient {
  IdentityClient({@required Directory root}) {
    ffi.store_dart_post_cobject(NativeApi.postCObject);
    final path = Utf8.toUtf8(root.path);
    final completer = Completer<int>();
    final port = singleCompletePort(completer);
    final result = ffi.client_init(port.nativePort, path);
    assert(result == ffi.ok);
    _clientInitOkay(completer.future);
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
    final completer = Completer<int>();
    final port = singleCompletePort(completer);
    final result = ffi.client_has_device_key(port.nativePort);
    assert(result == ffi.ok);
    return completer.future.then((value) => value == 1);
  }

  Future<void> _clientInitOkay(FutureOr<int> f) async {
    final res = await f;
    assert(res == ffi.ok);
  }
}
