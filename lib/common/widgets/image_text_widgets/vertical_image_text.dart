import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class AppVerticalImageText extends StatelessWidget {
  const AppVerticalImageText({
    super.key, required this.image, required this.title,
    this.textColor = MainColors.black, this.backgroundColor = MainColors.white, this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: MainSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(MainSizes.sm),
              decoration: BoxDecoration(
                  color: backgroundColor ?? (dark ? MainColors.black : MainColors.white),
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Center(
                child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    color: dark ? MainColors.light : MainColors.dark
                ),
              ),
            ),

            /// Text
            const SizedBox(height: MainSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Center(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
