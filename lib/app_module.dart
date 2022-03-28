import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:vedic_flutter_app/binding/home_binding.dart';
import 'package:vedic_flutter_app/binding/login_binding.dart';
import 'package:vedic_flutter_app/resource/route.dart';
import 'package:vedic_flutter_app/screens/home_screen.dart';
import 'package:vedic_flutter_app/screens/login_screen.dart';
import 'package:vedic_flutter_app/screens/profile_screen.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: loginRoute,
        page: () => LoginScreen(),
        binding: LoginBinding()),
    GetPage(
        name: homeRoute,
        page: () => HomeScreen(),
        binding: HomeBinding()),
    GetPage(
        name: profileRoute,
        page: () => ProfileScreen(),
       ),

  ];
}
