import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.child,
    required this.onPressed,
  });
  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 45,
      height: 45,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xFFD1D1D1)),
          shape: BoxShape.circle,
          color: theme.colorScheme.surface),
      child: Center(child: InkWell(onTap: onPressed, child: child)),
    );
  }
}
