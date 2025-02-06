import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskline/shared/theme/colors.dart';
import 'package:taskline/shared/theme/fonts.dart';
import 'package:taskline/shared/ui/icon_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      pinned: true,
      floating: false,
      expandedHeight: 270,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      backgroundColor: AppColors.darkAccent,
      surfaceTintColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('assets/icons/logo.svg'),
                      AppIconButton(
                          onPressed: () {},
                          child:
                              SvgPicture.asset('assets/icons/notification.svg'))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 25),
                  child: Text(
                    'Ищи объявления в реальном времени!',
                    style: TextStyle(
                        fontFamily: AppFonts.ralewayBold,
                        fontSize: 30,
                        color: theme.colorScheme.surface),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20, right: 10, left: 10),
            child: FictionSearchBar(),
          ),
        ),
      ),
    );
  }
}

class FictionSearchBar extends StatelessWidget {
  const FictionSearchBar({super.key, this.height = 50});
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/search.svg',
            width: 24,
            height: 24,
          ),
          SizedBox(width: 8),
          Text('Поиск подходящей работы',
              style:
                  TextStyle(fontSize: 16, fontFamily: AppFonts.ralewayMedium)),
        ],
      ),
    );
  }
}
