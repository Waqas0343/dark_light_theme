import 'package:get/get.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/profile/profile_binding.dart';
import '../modules/profile/profile_view.dart';
import '../modules/settings/settings_binding.dart';
import '../modules/settings/settings_view.dart';
import '../modules/splash/splash_binding.dart';
import '../modules/splash/splash_view.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(name: Routes.splash, page: () =>  SplashView(), binding: SplashBinding()),
    GetPage(name: Routes.home, page: () =>  HomeView(), binding: HomeBinding()),
    GetPage(name: Routes.profile, page: () =>  ProfileView(), binding: ProfileBinding()),
    GetPage(name: Routes.settings, page: () =>  SettingsView(), binding: SettingsBinding()),
  ];
}
