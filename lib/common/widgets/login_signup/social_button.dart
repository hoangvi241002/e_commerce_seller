import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class AppSocialButton extends StatelessWidget {
  const AppSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: MainColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: MainSizes.iconLg,
              height: MainSizes.iconLg,
              image: AssetImage(AppImageString.google),
            ),
          ),
        ),
        const SizedBox(width: MainSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(border: Border.all(color: MainColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: MainSizes.iconLg,
              height: MainSizes.iconLg,
              image: AssetImage(AppImageString.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
