import 'package:base_app/core/utils/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({
    super.key,
    required this.child,
    this.showBackButton = true,
  });

  final Widget child;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            showBackButton
                ? IconButton(
                  onPressed: () => context.pop(),
                  icon: Icon(Icons.chevron_left, size: 32),
                )
                : null,
        title: Text('Home'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                context.colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: child,
    );
  }
}
