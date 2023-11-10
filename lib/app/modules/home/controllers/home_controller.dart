import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:kt7/app/data/models/car/car.dart';
import 'package:kt7/app/data/models/getcarresp/getcarresp.dart';

enum StasusData {
  init,
  loading,
  success,
  error,
}

class HomeController extends GetxController {
  Dio client = Dio();
  String url = "https://myfakeapi.com/api/cars";

  var cars = <Car>[].obs;
  var status = StasusData.init.obs;

  final count = 0.obs;
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    status.value = StasusData.loading;
    var response = await client.get(url);
    if (response.statusCode != 200) {
      status.value = StasusData.error;
      return;
    }
    status.value = StasusData.success;
    var responseData = GetCarResponse.fromJson(response.data);
    cars.value = responseData.cars;
  }
}
