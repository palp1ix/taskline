import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskline/shared/ui/icon_button.dart';
import 'package:taskline/shared/ui/shared_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SharedAppBar(
            title: 'Александр',
            subtitle: 'Был в сети 5 минут назад',
            leading: AppIconButton(
                onPressed: () {},
                child: SvgPicture.asset('assets/icons/dollar.svg')),
            trailing: AppIconButton(
                child: SvgPicture.asset('assets/icons/more.svg'),
                onPressed: () {})),
        SliverList.builder(itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(20),
            width: 200,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(20),
            ),
          );
        })
      ],
    ));
  }
}
