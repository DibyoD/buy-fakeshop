import 'package:fakeshop_provider/providers/auth_provider.dart';
import 'package:fakeshop_provider/providers/product_provider.dart';
import 'package:fakeshop_provider/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ProductProvider()),
      ],
      child: FakeShop(),
    ),
  );
}

class FakeShop extends StatelessWidget {
  const FakeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.instance.router,
    );
  }
}
