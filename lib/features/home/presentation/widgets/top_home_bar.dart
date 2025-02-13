import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskline/features/home/presentation/widgets/city_widget.dart';
import 'package:taskline/shared/theme/fonts.dart';
import 'package:taskline/shared/ui/icon_button.dart';

class TopHomeBar extends StatelessWidget {
  const TopHomeBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CityWidget(),
            // FIXME: Change text 'Олег' to variable username
            Text(
              'Добрый день, Олег',
              style:
                  TextStyle(fontFamily: AppFonts.onyFormMedium, fontSize: 18),
            )
          ],
        ),
        AppIconButton(
            child: SvgPicture.asset(
              'assets/icons/user.svg',
              width: 25,
              height: 25,
              colorFilter: ColorFilter.mode(theme.hintColor, BlendMode.srcIn),
            ),
            onPressed: () {})
      ],
    );
  }
}
