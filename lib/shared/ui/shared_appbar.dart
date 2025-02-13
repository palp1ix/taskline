import 'package:flutter/material.dart';
import 'package:taskline/shared/theme/fonts.dart';

class SharedAppBar extends StatelessWidget {
  const SharedAppBar(
      {super.key,
      required this.title,
      this.leading,
      this.trailing,
      this.subtitle});
  final String title;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      surfaceTintColor: Colors.transparent,
      pinned: true,
      leading: leading,
      actions: trailing != null
          ? [
              trailing!,
            ]
          : null,
      title: subtitle == null
          ? AppBarTitle(title: title)
          : Column(
              children: [
                AppBarTitle(title: title),
                Text(subtitle!,
                    style: TextStyle(
                        fontFamily: AppFonts.nunitoMedium,
                        fontSize: 14,
                        color: theme.hintColor))
              ],
            ),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontFamily: AppFonts.ralewaySemiBold),
    );
  }
}
