import 'package:flutter/material.dart';

class FadeAnimation extends StatelessWidget {
  final Widget child;
  final bool visible;
  final Duration duration;

  const FadeAnimation({
    Key? key,
    required this.child,
    required this.visible,
    this.duration = const Duration(milliseconds: 300),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: duration,
      opacity: visible ? 1.0 : 0.0,
      child: child,
    );
  }
}
