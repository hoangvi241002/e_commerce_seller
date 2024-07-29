import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class AppSearchContainer extends StatelessWidget {
  const AppSearchContainer({
    super.key, required this.text, this.icon = Iconsax.search_normal, this.showBackground = true, this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MainSizes.defaultSpace),
      child: Container(
        width: AppDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(MainSizes.md),
        decoration: BoxDecoration(
          color: showBackground ? dark ? MainColors.dark : MainColors.light : Colors.transparent,
          borderRadius: BorderRadius.circular(MainSizes.cardRadiusLg),
          border: showBorder ? dark ? Border.all(color: MainColors.dark) : Border.all(color: MainColors.light) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: MainColors.darkGrey),
            const SizedBox(width: MainSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
      ),
    );
  }
}
