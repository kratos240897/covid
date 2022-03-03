import 'package:covid_details/repo/app_repo.dart';
import 'package:covid_details/screens/home/home_controller.dart';
import 'package:get/instance_manager.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppRepository());
    Get.lazyPut(() => HomeController(), fenix: true);
  }
}
