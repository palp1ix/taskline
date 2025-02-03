import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.child,
      required this.onPressed,
      this.borderRadius = 35,
      this.padding = 20});
  final Widget child;
  final double borderRadius;
  final double padding;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: theme.colorScheme.primary),
      child: TextButton(onPressed: onPressed, child: child),
    );
  }
}
