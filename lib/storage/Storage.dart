import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage{
  final _storage = FlutterSecureStorage();

  Future writeSecureData(String key,String value) async{
    var writeDate = await _storage.write(key: key, value: value);

    return writeDate;
  }

  Future readSecureData(String key) async{
    var readDate = await _storage.read(key: key);

    return readDate;
  }
  Future deleteSecureData(String key) async{
    var deleteDate = await _storage.read(key: key);
    return deleteDate;
  }
}