import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/product/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class AppHomeAppBar extends StatelessWidget {
  const AppHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBarCustom(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppTextString.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: MainColors.textSecondary)),
          Text(AppTextString.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: MainColors.black)),
        ],
      ),
      actions: [
        AppCartCounterIcon(onPressed: () {}, iconColor: MainColors.black),
      ],
    );
  }
}
