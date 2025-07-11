import 'package:base_app/data/services/dio_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'core/routes/app_router_config.dart';
import 'core/services/shared_prefs_service.dart';
import 'core/theme/app_theme.dart';
import 'data/services/api_service.dart';

late DioClient dioClient;
late ApiService apiService;

void main() {
  dioClient = DioClient();
  apiService = ApiService(dioClient.dio);
  // SharedPrefsService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouterConfig.router,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      builder: EasyLoading.init(),
    );
  }
}
