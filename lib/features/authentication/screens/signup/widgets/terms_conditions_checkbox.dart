import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class AppTermsAndConditionsCheckbox extends StatelessWidget {
  const AppTermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: MainSizes.spaceBtwItems),
        Text.rich(
            TextSpan(children: [
              TextSpan(text: '${AppTextString.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: AppTextString.privacyPolicy, style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? MainColors.white : MainColors.primaryColor,
                decoration: TextDecoration.underline,
                decorationColor: dark ? MainColors.white : MainColors.primaryColor,
              )),
              TextSpan(text: ' ${AppTextString.and} ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: AppTextString.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? MainColors.white : MainColors.primaryColor,
                decoration: TextDecoration.underline,
                decorationColor: dark ? MainColors.white : MainColors.primaryColor,
              )),
            ])
        )
      ],
    );
  }
}
