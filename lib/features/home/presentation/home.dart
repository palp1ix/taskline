import 'package:flutter/material.dart';
import 'package:taskline/features/home/presentation/widgets/home_search_bar.dart';
import 'package:taskline/features/home/presentation/widgets/top_home_bar.dart';
import 'package:taskline/shared/theme/fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        body: SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(top: 15),
              margin: EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Column(
                      children: [
                        TopHomeBar(),
                        SizedBox(height: 25),
                        RichText(
                          text: TextSpan(
                              text: 'Ищи задания и подработки в ',
                              style: TextStyle(
                                  fontFamily: AppFonts.onyFormMedium,
                                  fontSize: 30,
                                  color: theme.colorScheme.onSurface),
                              children: [
                                TextSpan(
                                    text: 'реальном времени!',
                                    style: TextStyle(
                                        color: theme.colorScheme.primary))
                              ]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  HomeSearchBar(),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
