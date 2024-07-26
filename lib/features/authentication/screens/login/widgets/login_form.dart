import 'package:e_commerce_seller/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_commerce_seller/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce_seller/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class AppLoginForm extends StatelessWidget {
  const AppLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: MainSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: AppTextString.email,
              ),
            ),
            const SizedBox(height: MainSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: AppTextString.password,
                  suffixIcon: Icon(Iconsax.eye_slash)
              ),
            ),
            const SizedBox(height: MainSizes.spaceBtwInputFields / 2),

            /// Remember me & forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(AppTextString.rememberMe)
                  ],
                ),
                /// Forget password
                TextButton(onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(AppTextString.forgetPassword)),
                const SizedBox(height: MainSizes.spaceBtwSections),
              ],
            ),

            /// Sign In Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), child: const Text(AppTextString.signIn))),
            const SizedBox(height: MainSizes.spaceBtwItems),
            /// Create Account Button
            SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(() => const SignUpScreens()), child: const Text(AppTextString.createAccount))),
          ],
        ),
      ),
    );
  }
}
