import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskline/shared/theme/fonts.dart';

class CityWidget extends StatelessWidget {
  const CityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/icons/location.svg',
          width: 18,
          height: 18,
          colorFilter: ColorFilter.mode(theme.hintColor, BlendMode.srcIn),
        ),
        SizedBox(width: 7),
        // FIXME: Change text 'Минск' to variable city
        Text(
          'Минск',
          style: TextStyle(
              color: theme.hintColor,
              fontFamily: AppFonts.onyFormMedium,
              fontSize: 18),
        )
      ],
    );
  }
}
