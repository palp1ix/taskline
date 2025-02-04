import 'package:flutter/material.dart';

class SharedAppBar extends StatelessWidget {
  const SharedAppBar(
      {super.key,
      required this.title,
      required this.leading,
      required this.trailing,
      this.subtitle});
  final String title;
  final String? subtitle;
  final Widget leading;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: leading,
      actions: [
        trailing,
      ],
      title: subtitle == null
          ? Text(title)
          : Column(
              children: [Text(title), Text(subtitle!)],
            ),
    );
  }
}
