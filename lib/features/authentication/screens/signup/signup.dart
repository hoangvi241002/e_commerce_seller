import 'package:e_commerce_seller/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_seller/common/widgets/login_signup/social_button.dart';
import 'package:e_commerce_seller/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce_seller/utils/constants/sizes.dart';
import 'package:e_commerce_seller/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class SignUpScreens extends StatelessWidget {
  const SignUpScreens({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MainSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(AppTextString.signUpTitle, style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: MainSizes.spaceBtwSections),

              /// Form
              const AppSignUpForm(),

              /// Divider
              AppFormDivider(dividerText: AppTextString.orSignUpWith.capitalize!),
              const SizedBox(height: MainSizes.spaceBtwSections),

              /// Social Button
              const AppSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

