import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/base_screen.dart';
import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return BaseScreen(
          showBackButton: false,
          child: Center(child: Text('Home Screen')),
        );
      },
    );
  }
}
