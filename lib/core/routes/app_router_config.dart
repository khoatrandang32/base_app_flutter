import 'package:base_app/ui/screens/profile/profile_screen.dart';
import 'package:base_app/ui/screens/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';
import '../../ui/screens/home/home_screen.dart';
import '../../ui/screens/login/login_screen.dart';
import 'app_routes.dart';

class AppRouterConfig {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(path: AppRoutes.home, builder: (context, state) => HomeScreen()),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.profile,
        builder: (context, state) => ProfileScreen(),
      ),
    ],
    errorBuilder: (context, state) => HomeScreen(),
  );
}
