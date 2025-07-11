import 'package:get/get.dart';

import '../../core/services/shared_prefs_service.dart';


class BaseController extends GetxController {
  SharedPrefsService sharedPrefsService = SharedPrefsService();

  @override
  void onInit() {
    super.onInit();
  }
}
