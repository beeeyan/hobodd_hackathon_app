import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../feature/calendar/presentation/calendar.dart';
import '../feature/onboarding/presentation/onboarding.dart';
import '../feature/root.dart';
import '../feature/sample2.dart';
import '../feature/user/user_provider.dart';
import 'no_animation_transition.dart';
import 'turn_page_animation_transition.dart';

final rootNavigatorKeyProvider = Provider(
  (ref) => GlobalKey<NavigatorState>(debugLabel: 'root'),
);

final shellNavigatorKeyProvider = Provider(
  (ref) => GlobalKey<NavigatorState>(debugLabel: 'shell'),
);

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    final rootNavigatorKey = ref.watch(rootNavigatorKeyProvider);
    final shellNavigatorKey = ref.watch(shellNavigatorKeyProvider);
    return GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: CalendarPage.path,
      redirect: (context, state) async {
        try {
          await ref.read(userProvider.future);
        } on Exception catch (_) {
          // エラーとなった場合はOnboardingPageに遷移
          return OnboardingPage.path;
        }
        return null;
      },
      routes: [
        ShellRoute(
          navigatorKey: shellNavigatorKey,
          builder: (context, state, child) => RootPage(child: child),
          routes: [
            GoRoute(
              path: CalendarPage.path,
              name: CalendarPage.name,
              pageBuilder: (context, state) => state.extra == null
                  ? buildNoAnimationTransition(
                      const CalendarPage(),
                    )
                  : buildTurnPageAnimationTransition(
                      CalendarPage(date: state.extra! as DateTime),
                    ),
            ),
            GoRoute(
              path: Sample2Page.path,
              name: Sample2Page.name,
              pageBuilder: (context, state) => buildNoAnimationTransition(
                const Sample2Page(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: OnboardingPage.path,
          name: OnboardingPage.name,
          pageBuilder: (context, state) => buildNoAnimationTransition(
            const OnboardingPage(),
          ),
        ),
      ],
    );
  },
);
