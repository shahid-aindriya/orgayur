import 'package:get/get.dart';

import '../modules/all product data/cart/bindings/cart_binding.dart';
import '../modules/all product data/cart/views/cart_view.dart';
import '../modules/all product data/checkout/bindings/checkout_binding.dart';
import '../modules/all product data/checkout/views/checkout_view.dart';
import '../modules/all product data/home/bindings/home_binding.dart';
import '../modules/all product data/home/views/home_view.dart';
import '../modules/all product data/orgayur_home/bindings/orgayur_home_binding.dart';
import '../modules/all product data/orgayur_home/views/orgayur_home_view.dart';
import '../modules/all product data/product_details/bindings/product_details_binding.dart';
import '../modules/all product data/product_details/views/product_details_view.dart';
import '../modules/all service data/service/bindings/service_binding.dart';
import '../modules/all service data/service/views/service_view.dart';
import '../modules/bottombar/bindings/bottombar_binding.dart';
import '../modules/bottombar/views/bottombar_view.dart';
import '../modules/location_detected/bindings/location_detected_binding.dart';
import '../modules/location_detected/views/location_detected_view.dart';
import '../modules/location_screen/bindings/location_screen_binding.dart';
import '../modules/location_screen/views/location_screen_view.dart';
import '../modules/login_screen/bindings/login_screen_binding.dart';
import '../modules/login_screen/views/login_screen_view.dart';
import '../modules/market_place/bindings/market_place_binding.dart';
import '../modules/market_place/views/market_place_view.dart';
import '../modules/myorders/bindings/myorders_binding.dart';
import '../modules/myorders/views/myorders_view.dart';
import '../modules/otp_screen/bindings/otp_screen_binding.dart';
import '../modules/otp_screen/views/otp_screen_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/user_profile/bindings/user_profile_binding.dart';
import '../modules/user_profile/views/user_profile_view.dart';

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
      name: _Paths.SERVICE,
      page: () => const ServiceView(),
      binding: ServiceBinding(),
    ),
    GetPage(
      name: _Paths.ORGAYUR_HOME,
      page: () => const OrgayurHomeView(),
      binding: OrgayurHomeBinding(),
    ),
    GetPage(
      name: _Paths.MARKET_PLACE,
      page: () => const MarketPlaceView(),
      binding: MarketPlaceBinding(),
    ),
    GetPage(
      name: _Paths.USER_PROFILE,
      page: () => const UserProfileView(),
      binding: UserProfileBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAILS,
      page: () => ProductDetailsView(),
      binding: ProductDetailsBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT,
      page: () => CheckoutView(),
      binding: CheckoutBinding(),
    ),
    GetPage(
      name: _Paths.MYORDERS,
      page: () => const MyordersView(),
      binding: MyordersBinding(),
    ),
  ];
}
