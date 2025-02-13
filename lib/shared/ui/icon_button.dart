import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.child,
    this.isBordered = false,
    required this.onPressed,
    this.backgroundColor,
  });
  final Widget child;
  final bool isBordered;
  final Color? backgroundColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.all(5),
      width: 50,
      height: 50,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: isBordered
              ? Border.all(
                  width: 1, color: backgroundColor ?? Color(0xFFD1D1D1))
              : null,
          shape: BoxShape.circle,
          color: theme.colorScheme.surfaceContainer),
      child: Center(child: InkWell(onTap: onPressed, child: child)),
    );
  }
}
