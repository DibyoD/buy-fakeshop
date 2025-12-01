import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavBar extends StatelessWidget {
  final Widget child;

  const AppNavBar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final currentLocation = GoRouterState.of(context).matchedLocation;

    return Scaffold(
      extendBody: true,
      body: child,

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 80, right: 80, bottom: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(28),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(28),
                border: Border.all(color: Colors.grey.shade700),
              ),

              // Custom nav bar row
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _navItem(
                    context,
                    index: 0,
                    icon: Icons.home,
                    active: currentLocation.startsWith('/home'),
                    path: '/home',
                  ),

                  _navItem(
                    context,
                    index: 2,
                    icon: Icons.shopping_cart,
                    active: currentLocation.startsWith('/cart'),
                    path: '/cart',
                  ),

                  _navItem(
                    context,
                    index: 3,
                    icon: Icons.person,
                    active: currentLocation.startsWith('/profile'),
                    path: '/profile',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _navItem(
    BuildContext context, {
    required int index,
    required IconData icon,
    required bool active,
    required String path,
  }) {
    return InkWell(
      onTap: () => context.go(path),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: active ? 30 : 26,
            color: active ? Colors.black : Colors.grey,
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
