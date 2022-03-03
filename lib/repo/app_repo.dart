// ignore_for_file: avoid_print
import 'package:covid_details/models/countries_response.dart';
import 'package:covid_details/models/covid_response.dart';
import 'package:get/instance_manager.dart';
import '../service/api_service.dart';

abstract class AppRepo {
  Future<Data> getCountries(String url);
  Future<CovidResponse> getDetails(String url, String countryCode);
  void init();
}

class AppRepository extends AppRepo {
  final ApiService _apiService = Get.put(ApiService());
  @override
  Future<Data> getCountries(String url) async {
     try {
      final res = await _apiService.getRequest(url, {});
      final data = CountriesResponse.fromJson(res.data).data;
      return data;
    } catch (e) {
      print(e);
      return Future.error(e);
    }
  }

  @override
  Future<CovidResponse> getDetails(String url, String countryCode) async {
     try {
      final res = await _apiService.getRequest(url + countryCode, {});
      final details = CovidResponse.fromJson(res.data);
      return details;
    } catch (e) {
      print(e);
      return Future.error(e);
    }
  }

  @override
  void init() {
    _apiService.addInterceptor();
  }

}
