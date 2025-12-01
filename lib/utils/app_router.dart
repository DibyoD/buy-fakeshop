import 'package:fakeshop_provider/screens/all_products.dart';
import 'package:fakeshop_provider/screens/cart_screen.dart';
import 'package:fakeshop_provider/screens/home_screen.dart';
import 'package:fakeshop_provider/screens/login.dart';
import 'package:fakeshop_provider/screens/profile_screen.dart';
import 'package:fakeshop_provider/screens/splash_screen.dart';
import 'package:fakeshop_provider/utils/app_nav_bar.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final AppRouter instance = AppRouter._();

  AppRouter._();

  final storage = const FlutterSecureStorage();

  late final GoRouter router = GoRouter(
    initialLocation: '/splash',

    redirect: (context, state) async {
      final token = await storage.read(key: "TOKEN");

      // Allow splash always
      if (state.matchedLocation == '/splash') return null;

      // If not logged in → go to login
      if (token == null && state.matchedLocation != '/login') {
        return '/login';
      }

      // If logged in → prevent returning to login
      if (token != null && state.matchedLocation == '/login') {
        return '/home';
      }

      return null;
    },

    routes: [
      /// ----- Screens Without Navbar -----
      GoRoute(path: '/splash', builder: (_, __) => const SplashScreen()),
      GoRoute(path: '/login', builder: (_, __) => LoginScreen()),
      GoRoute(path: '/allProducts', builder: (_, __) => const AllProducts()),

      /// ----- Navbar Wrapper -----
      ShellRoute(
        builder: (context, state, child) => AppNavBar(child: child),
        routes: [
          GoRoute(path: '/home', builder: (_, __) => const HomeScreen()),
          GoRoute(path: '/cart', builder: (_, __) => const CartScreen()),
          GoRoute(path: '/profile', builder: (_, __) => const ProfileScreen()),
        ],
      ),
    ],
  );
}

