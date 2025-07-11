import 'package:base_app/main.dart';
import 'package:base_app/ui/controllers/base_controller.dart';

class SplashController extends BaseController {
  @override
  void onInit() async {
    var response1 = await apiService.getListModel();
    // var response2 = await apiService.getModel('1');
    super.onInit();
  }
}
