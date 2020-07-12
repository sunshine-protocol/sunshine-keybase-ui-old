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

  Future<bool> get ready => startUpClient();

  final Directory _root;

  Future<bool> startUpClient() async {
    final path = Utf8.toUtf8(_root.path);
    final completer = Completer<int>();
    final port = singleCompletePort(completer);
    final result = ffi.client_init(port.nativePort, path);
    if (result == ffi.ok) {
      return _clientInitOkay(completer.future);
    } else if (result == ffi.alreadyInit) {
      return true;
    } else {
      throw StateError('Status Code: $result');
    }
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
    return completer.future;
  }

  Future<String> setDeviceKey(String password, {String suri, String paperKey}) {
    final completer = Completer<String>();
    final port = singleCompletePort(completer);
    final s = suri != null ? Utf8.toUtf8(suri) : Pointer<Utf8>.fromAddress(0);
    final pass = Utf8.toUtf8(password);
    final phrase =
        paperKey != null ? Utf8.toUtf8(paperKey) : Pointer<Utf8>.fromAddress(0);
    final result = ffi.client_key_set(port.nativePort, s, pass, phrase);
    assert(result == ffi.ok);
    return completer.future;
  }

  Future<String> deviceId() {
    final completer = Completer<String>();
    final port = singleCompletePort(completer);
    final result = ffi.client_current_device_id(port.nativePort);
    assert(result == ffi.ok);
    return completer.future;
  }

  Future<String> uid(String identifier) {
    final completer = Completer<String>();
    final port = singleCompletePort(completer);
    final id = Utf8.toUtf8(identifier);
    final result = ffi.client_resolve_uid(port.nativePort, id);
    assert(result == ffi.ok);
    return completer.future;
  }

  Future<int> mint(String identifier) {
    final completer = Completer<String>();
    final port = singleCompletePort(completer);
    final id = Utf8.toUtf8(identifier);
    final result = ffi.client_faucet_mint(port.nativePort, id);
    assert(result == ffi.ok);
    return completer.future.then(int.parse);
  }

  Future<bool> _clientInitOkay(FutureOr<int> f) async {
    final start = DateTime.now();
    final res = await f;
    final end = DateTime.now();
    final elapsed = end.difference(start);
    print(
      'Client Started in:\n'
      '\t=> ${elapsed.inMinutes} min\n'
      '\t=> ${elapsed.inSeconds} sec\n',
    );
    return res == ffi.ok;
  }
}
