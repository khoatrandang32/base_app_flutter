import 'package:base_app/data/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../core/constants/constants.dart';
import '../models/test_objects.dart';

part 'generated/api_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @GET('/objects')
  Future<List<TestModel>> getListModel();

  @GET('/objects/{id}')
  Future<TestModel> getModel(@Path('id') String id);

  @POST('/objects')
  Future<void> addModel(@Body() TestModel model);
}
