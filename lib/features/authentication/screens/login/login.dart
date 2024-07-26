import 'package:e_commerce_seller/common/styles/spacing_style.dart';
import 'package:e_commerce_seller/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_seller/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_seller/utils/constants/colors.dart';
import 'package:e_commerce_seller/utils/constants/image_strings.dart';
import 'package:e_commerce_seller/utils/constants/sizes.dart';
import 'package:e_commerce_seller/utils/constants/text_strings.dart';
import 'package:e_commerce_seller/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// logo, title, sub-Title
              const AppLoginHeader(),

              /// form
              const AppLoginForm(),

              /// Divider
              AppFormDivider(dividerText: AppTextString.orSignInWith.capitalize!),
              const SizedBox(height: MainSizes.spaceBtwSections,),

              /// Footer
              const AppSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}




