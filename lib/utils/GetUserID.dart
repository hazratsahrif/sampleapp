
import 'package:get_storage/get_storage.dart';

class GetUserID{

  final storage = GetStorage();
  Future<String?> getID() async{
    final id =  await storage.read("userID");
    // final id =  await storage.read(key: "userID");
    return id;
  }
}