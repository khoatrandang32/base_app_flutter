import 'package:base_app/data/models/test_objects.dart';
import 'package:base_app/main.dart';
import 'package:base_app/ui/controllers/base_controller.dart';

class HomeController extends BaseController {
  @override
  void onInit() async {
    var res = await apiService.getListModel();
    var response1 = await apiService.addModel(TestModel(
      name: 'abc',
      data: Data(
        color: "123",
        capacity: "321"
      )
    ));
    super.onInit();
  }
}
