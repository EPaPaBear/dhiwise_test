import 'package:test/presentation/sussy_phone_screen/sussy_phone_screen.dart';
import 'package:test/presentation/sussy_phone_screen/binding/sussy_phone_binding.dart';
import 'package:test/presentation/login_phone_screen/login_phone_screen.dart';
import 'package:test/presentation/login_phone_screen/binding/login_phone_binding.dart';
import 'package:test/presentation/register_phone_screen/register_phone_screen.dart';
import 'package:test/presentation/register_phone_screen/binding/register_phone_binding.dart';
import 'package:test/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:test/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String sussyPhoneScreen = '/sussy_phone_screen';

  static String loginPhoneScreen = '/login_phone_screen';

  static String registerPhoneScreen = '/register_phone_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: sussyPhoneScreen,
      page: () => SussyPhoneScreen(),
      bindings: [
        SussyPhoneBinding(),
      ],
    ),
    GetPage(
      name: loginPhoneScreen,
      page: () => LoginPhoneScreen(),
      bindings: [
        LoginPhoneBinding(),
      ],
    ),
    GetPage(
      name: registerPhoneScreen,
      page: () => RegisterPhoneScreen(),
      bindings: [
        RegisterPhoneBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SussyPhoneScreen(),
      bindings: [
        SussyPhoneBinding(),
      ],
    )
  ];
}
