import 'package:get/get.dart';
import 'package:sampleapp/app/modules/home/views/splash_view.dart';
import 'package:sampleapp/app/modules/withdraw/views/withdrawl_resquest_view.dart';

import '../modules/bankaccount/bindings/bankaccount_binding.dart';
import '../modules/bankaccount/views/account_verification_view.dart';
import '../modules/bankaccount/views/bankaccount_view.dart';
import '../modules/bottomnav/bindings/bottomnav_binding.dart';
import '../modules/bottomnav/views/bottomnav_view.dart';
import '../modules/contactus/bindings/contactus_binding.dart';
import '../modules/contactus/views/contactus_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/tabs/views/dashboard_sheare_view.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/deposit/bindings/deposit_binding.dart';
import '../modules/deposit/views/deposit_view.dart';
import '../modules/depositstatement/bindings/depositstatement_binding.dart';
import '../modules/depositstatement/views/depositstatement_view.dart';
import '../modules/documentform/bindings/documentform_binding.dart';
import '../modules/documentform/views/documentform_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/market/bindings/market_binding.dart';
import '../modules/market/views/market_view.dart';
import '../modules/portfolio/bindings/portfolio_binding.dart';
import '../modules/portfolio/views/portfolio_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/profileform/bindings/profileform_binding.dart';
import '../modules/profileform/views/profileform_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/tradinghistory/bindings/tradinghistory_binding.dart';
import '../modules/tradinghistory/views/tradinghistory_view.dart';
import '../modules/withdraw/bindings/withdraw_binding.dart';
import '../modules/withdraw/views/withdraw_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMNAV,
      page: () => BottomNavigationView(),
      binding: BottomnavBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.MARKET,
      page: () => MarketView(),
      binding: MarketBinding(),
    ),
    GetPage(
      name: _Paths.PORTFOLIO,
      page: () => const PortfolioView(),
      binding: BottomnavBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () =>  ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.PROFILEFORM,
      page: () => const ProfileformView(),
      binding: ProfileformBinding(),
    ),
    GetPage(
      name: _Paths.DOCUMENTFORM,
      page: () => const DocumentformView(),
      binding: DocumentformBinding(),
    ),
    GetPage(
      name: _Paths.BANKACCOUNT,
      page: () => const BankaccountView(),
      binding: BankaccountBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNTVERIFICATION,
      page: () => const AccountVerificationView(),
      binding: BankaccountBinding(),
    ),
    GetPage(
      name: _Paths.CONTACTUS,
      page: () => const ContactusView(),
      binding: ContactusBinding(),
    ),
    GetPage(
      name: _Paths.SHEAREVIEW,
      page: () => const DashBoardSheareView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.DEPOSIT,
      page: () => DepositView(),
      binding: DepositBinding(),
    ),
    GetPage(
      name: _Paths.WITHDRAW,
      page: () =>  WithdrawView(),
      binding: WithdrawBinding(),
    ),
    GetPage(
      name: _Paths.TRADINGHISTORY,
      page: () => const TradinghistoryView(),
      binding: TradinghistoryBinding(),
    ),
    GetPage(
      name: _Paths.DEPOSITSTATEMENT,
      page: () => const DepositstatementView(),
      binding: DepositstatementBinding(),
    ),
    GetPage(
      name: _Paths.WITHDRAWREQUEST,
      page: () =>  WithdrawRequestView(),
      binding: DepositstatementBinding(),
    ),
  ];
}
