import 'package:covid_details/screens/details/details_controller.dart';
import 'package:get/instance_manager.dart';

class DetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsController(), fenix: true);
  }
}
