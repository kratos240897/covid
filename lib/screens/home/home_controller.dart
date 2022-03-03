import 'package:covid_details/models/countries_response.dart';
import 'package:covid_details/repo/app_repo.dart';
import 'package:get/get.dart';
import '../../helpers/constants.dart';

class HomeController extends GetxController {
  final AppRepository _appRepo = Get.find<AppRepository>();
  late Data data;
  List<String> countryCodes = RxList.empty();
  List<CountryDetails> countries = RxList.empty();
  final isLoading = false.obs;
  final error = ''.obs;
  @override
  void onInit() {
    _appRepo.init();
    getCountries();
    super.onInit();
  }

  getCountries() {
    isLoading.value = true;
    _appRepo.getCountries(Constants.COUNTRIES_URL).then((value) {
      data = value;
      final map = data.toJson();
      map.forEach((key, value) {
        countryCodes.add(key);
        countries.add(CountryDetails.fromJson(value));
      });
      isLoading.value = false;
    }).onError((error, _) {
      this.error.value = error.toString();
      isLoading.value = false;
    });
  }
}
