import 'package:get/route_manager.dart';
import 'package:rotania_apps/ui/forum/forum_page.dart';
import 'package:rotania_apps/ui/home/home_page.dart';
import 'package:rotania_apps/ui/login/signin_page.dart';
import 'package:rotania_apps/ui/login/success_login_page.dart';
import 'package:rotania_apps/ui/main/main_page.dart';
import 'package:rotania_apps/ui/onboarding/onboarding1_page.dart';
import 'package:rotania_apps/ui/onboarding/onboarding2_page.dart';
import 'package:rotania_apps/ui/onboarding/onboarding3_page.dart';
import 'package:rotania_apps/ui/profile/profile_page.dart';
import 'package:rotania_apps/ui/register/signup1_page.dart';
import 'package:rotania_apps/ui/register/signup2_page.dart';
import 'package:rotania_apps/ui/register/signup3_page.dart';
import 'package:rotania_apps/ui/register/success_register.dart';
import 'package:rotania_apps/ui/splashscreen/splash_page.dart';
import 'package:rotania_apps/ui/trending/trending_page.dart';
import 'package:rotania_apps/ui/welcome/welcome_page.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.main;
  static final routes = [
    GetPage(name: Routes.splash, page: () => const SplashPage()),
    GetPage(name: Routes.onboarding1, page: () => const OnBoarding1()),
    GetPage(name: Routes.onboarding2, page: () => const OnBoarding2()),
    GetPage(name: Routes.onboarding3, page: () => const OnBoarding3()),
    GetPage(name: Routes.welcome, page: () => const WelcomePage()),
    GetPage(name: Routes.signup1, page: () => const SignUp1()),
    GetPage(name: Routes.signup2, page: () => const SignUp2()),
    GetPage(name: Routes.signup3, page: () => const SignUp3()),
    GetPage(name: Routes.successRegister, page: () => const SuccessRegister()),
    GetPage(name: Routes.signin, page: () => const SignInPage()),
    GetPage(name: Routes.successLogin, page: () => const SuccessLogin()),
    GetPage(name: Routes.main, page: () => const MainPage()),
    GetPage(name: Routes.home, page: () => const HomePage()),
    GetPage(name: Routes.trending, page: () => const TrendingPage()),
    GetPage(name: Routes.forum, page: () => const ForumPage()),
    GetPage(name: Routes.profile, page: () => const ProfilePage()),
  ];
}
