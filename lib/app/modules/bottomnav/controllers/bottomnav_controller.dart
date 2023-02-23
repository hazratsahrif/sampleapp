import 'dart:convert';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart' hide Data;
import 'package:sampleapp/api/model/GetUserPortfolioModel.dart';
import 'package:sampleapp/api/model/Porfoliodata.dart';
import 'package:sampleapp/api/model/TradingModel.dart';
import 'package:sampleapp/api/respository/auth_repository.dart';
import 'package:sampleapp/app/routes/app_pages.dart';
import 'package:sampleapp/app/utils/SnackBarUtils.dart';
import 'package:sampleapp/storage/Storage.dart';
import 'package:sampleapp/utils/easy_loading.dart';

class BottomnavController extends GetxController {
  static BottomnavController get instance => Get.find<BottomnavController>();
  final _myRepo = AuthRepository();
  SecureStorage secureStorage = new SecureStorage();
  RxList<Data> tradingDataList = <Data>[].obs;

  Rx<Porfoliodata> portfolioData = Porfoliodata().obs;
  String id="";
  RxBool isLoadingTrading = true.obs;
  RxBool isLoadingPortfolio = true.obs;
  @override
  void onInit() async{
    super.onInit();
    id =  await secureStorage.readSecureData("userID");

      Map data ={
        "user_id": "3"
      };
       getTradingData(data);
    getUserPortfolio(data);
  }
  RxInt selectedIndex = 0.obs;

  void onItemTapped(int index) {
      selectedIndex.value = index;
  }

  @override
  void onClose() {
    super.onClose();
  }
  Future<void> getTradingData(dynamic data) async {
    Loading().showEasyLoading("loading...");
    isLoadingTrading.value = true;
    print(data.toString());

    print("getTrading data");
    _myRepo.getAllTradingResult(data).then((value) async {
      final Map parsed = json.decode(value);
      final list = TradingModel.fromJson(parsed);
      if(list.status!.data!.length !=0){
        Loading().easyLoadingSuccess();
        isLoadingTrading.value = false;
        print("list"+list.status!.data!.length.toString());
        tradingDataList.value = list.status!.data!;
      }
      else{
        isLoadingTrading.value = false;
        Loading().easyLoadingSuccess();
      }



    }).onError((error, stackTrace){
      Loading().dismissEasyLoading();
      SnackBarUtils.showError(error.toString());
      // }
      print("hazrat jani${error.toString()}");

    });
  }

  Future<void> getUserPortfolio(dynamic data) async {
    Loading().showEasyLoading("loading...");
    isLoadingPortfolio.value = true;
    print(data.toString());

    print("getTrading data");
    _myRepo.getUserPortfolioResult(data).then((value) async {
      final Map parsed = json.decode(value);
      final list = GetUserPortfolioModel.fromJson(parsed);
      if(list.status!.data!.userName!.isNotEmpty){
        Loading().easyLoadingSuccess();
        isLoadingPortfolio.value = false;
        portfolioData.value = list.status!.data!;
      }
      else{
        isLoadingPortfolio.value = false;
        Loading().easyLoadingSuccess();
      }

    }).onError((error, stackTrace){
      Loading().dismissEasyLoading();
      SnackBarUtils.showError(error.toString());
      // }
      print("hazrat jani${error.toString()}");

    });
  }

}
