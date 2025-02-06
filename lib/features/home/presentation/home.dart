import 'package:flutter/material.dart';
import 'package:taskline/features/home/presentation/widgets/home_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        HomeAppBar(),
        SliverList.builder(itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(15),
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20),
            ),
          );
        })
      ],
    ));
  }
}
