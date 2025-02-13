import 'package:flutter/material.dart';
import 'package:taskline/features/home/presentation/widgets/home_search_bar.dart';
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
            child: HomeSearchBar(),
          )
        ],
      ),
    ));
  }
}
