import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:turn_page_transition/turn_page_transition.dart';

CustomTransitionPage<void> buildTurnPageAnimationTransition(Widget child) {
  return CustomTransitionPage(
    child: child,
    transitionDuration: const Duration(milliseconds: 600),
    reverseTransitionDuration: Duration.zero,
    transitionsBuilder: (
      context,
      animation,
      secondaryAnimation,
      child,
    ) =>
        TurnPageTransition(
      animation: animation,
      overleafColor: Colors.white,
      animationTransitionPoint: 0.7,
      child: child,
    ),
  );
}
