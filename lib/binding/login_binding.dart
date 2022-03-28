import 'package:get/get.dart';
import 'package:vedic_flutter_app/controller/login_controller.dart';

class LoginBinding extends Bindings {
  void dependencies() => Get.lazyPut(() =>LoginController());

}
