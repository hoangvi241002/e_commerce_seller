import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class AppLoginHeader extends StatelessWidget {
  const AppLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Image(width: MainSizes.imageCarouselHeight, height: MainSizes.imageCarouselHeight, image: AssetImage(dark ? AppImageString.lightAppLogo : AppImageString.darkAppLogo))),
        Text(AppTextString.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: MainSizes.sm),
        Text(AppTextString.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium), 
      ],
    );
  }
}
