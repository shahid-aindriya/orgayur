import 'package:get/get.dart';

import 'package:orgayur/app/modules/bottombar/bindings/bottombar_binding.dart';
import 'package:orgayur/app/modules/bottombar/views/bottombar_view.dart';
import 'package:orgayur/app/modules/e_commerce/bindings/e_commerce_binding.dart';
import 'package:orgayur/app/modules/e_commerce/views/e_commerce_view.dart';
import 'package:orgayur/app/modules/home/bindings/home_binding.dart';
import 'package:orgayur/app/modules/home/views/home_view.dart';
import 'package:orgayur/app/modules/knowledge_base/bindings/knowledge_base_binding.dart';
import 'package:orgayur/app/modules/knowledge_base/views/knowledge_base_view.dart';
import 'package:orgayur/app/modules/location_detected/bindings/location_detected_binding.dart';
import 'package:orgayur/app/modules/location_detected/views/location_detected_view.dart';
import 'package:orgayur/app/modules/location_screen/bindings/location_screen_binding.dart';
import 'package:orgayur/app/modules/location_screen/views/location_screen_view.dart';
import 'package:orgayur/app/modules/login_screen/bindings/login_screen_binding.dart';
import 'package:orgayur/app/modules/login_screen/views/login_screen_view.dart';
import 'package:orgayur/app/modules/machinery/bindings/machinery_binding.dart';
import 'package:orgayur/app/modules/machinery/views/machinery_view.dart';
import 'package:orgayur/app/modules/market_place/bindings/market_place_binding.dart';
import 'package:orgayur/app/modules/market_place/views/market_place_view.dart';
import 'package:orgayur/app/modules/otp_screen/bindings/otp_screen_binding.dart';
import 'package:orgayur/app/modules/otp_screen/views/otp_screen_view.dart';
import 'package:orgayur/app/modules/services/bindings/services_binding.dart';
import 'package:orgayur/app/modules/services/views/services_view.dart';
import 'package:orgayur/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:orgayur/app/modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.OTP_SCREEN,
      page: () => OtpScreenView(),
      binding: OtpScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOCATION_SCREEN,
      page: () => LocationScreenView(),
      binding: LocationScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOCATION_DETECTED,
      page: () => LocationDetectedView(),
      binding: LocationDetectedBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMBAR,
      page: () => BottombarView(),
      binding: BottombarBinding(),
    ),
    GetPage(
      name: _Paths.MARKET_PLACE,
      page: () => MarketPlaceView(),
      binding: MarketPlaceBinding(),
    ),
    GetPage(
      name: _Paths.E_COMMERCE,
      page: () => ECommerceView(),
      binding: ECommerceBinding(),
    ),
    GetPage(
      name: _Paths.MACHINERY,
      page: () => MachineryView(),
      binding: MachineryBinding(),
    ),
    GetPage(
      name: _Paths.SERVICES,
      page: () => ServicesView(),
      binding: ServicesBinding(),
    ),
    GetPage(
      name: _Paths.KNOWLEDGE_BASE,
      page: () => KnowledgeBaseView(),
      binding: KnowledgeBaseBinding(),
    ),
  ];
}
