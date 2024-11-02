import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../gen/assets.gen.dart';
import '../routing/bottom_navigation_bar_page_type.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final pageType = _calculatePageType(context);

    return Scaffold(
      appBar: pageType == BottomNavigationBarPageType.calendar
          ? AppBar(
              shadowColor: Colors.black,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 4,
                      blurRadius: 8,
                      offset: const Offset(1, 3),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(
                      Assets.images.feature.calendar.appBar.path,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              automaticallyImplyLeading: false,
            )
          : null,
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageType.index,
        onTap: (index) {
          final pageType = BottomNavigationBarPageType.values[index];
          GoRouter.of(context).go(pageType.path);
        },
        items: [
          for (final pageType in BottomNavigationBarPageType.values) ...[
            BottomNavigationBarItem(
              icon: Icon(pageType.icon),
              label: pageType.bottomNavBarLabel,
            ),
          ],
        ],
      ),
    );
  }

  static BottomNavigationBarPageType _calculatePageType(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    return BottomNavigationBarPageType.pageTypeByPath(location);
  }
}
