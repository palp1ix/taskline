import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskline/shared/theme/fonts.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 59,
      decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Text(
              'Поиск подходящей работы',
              style: TextStyle(
                  fontFamily: AppFonts.primaryMedium,
                  fontSize: 18,
                  color: theme.hintColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 23),
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(theme.hintColor, BlendMode.srcIn),
            ),
          ),
        ],
      ),
    );
  }
}
