import 'package:get/get.dart';
import 'package:vedic_flutter_app/controller/home_controller.dart';

class HomeBinding extends Bindings {
  void dependencies() => Get.lazyPut(() =>HomePageController());

}
