import 'package:covid_details/models/covid_response.dart';
import 'package:get/get.dart';

import '../../helpers/constants.dart';
import '../../repo/app_repo.dart';

class DetailsController extends GetxController {
  final AppRepository _appRepo = Get.find<AppRepository>();
  final isLoading = false.obs;
  final error = ''.obs;
  late CovidResponse covidResponse;
  final selectedIndex = 0.obs;

  getCovidDetails(String countryCode) {
    isLoading.value = true;
    _appRepo.getDetails(Constants.COVID_URL, countryCode).then((value) {
      covidResponse = value;
      isLoading.value = false;
    }).onError((error, stackTrace) {
      this.error.value = error.toString();
      isLoading.value = false;
    });
  }
}
