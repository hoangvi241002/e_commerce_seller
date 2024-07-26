import 'package:e_commerce_seller/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_seller/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class AppSignUpForm extends StatelessWidget {
  const AppSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(labelText: AppTextString.firstName, prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                const SizedBox(width: MainSizes.spaceBtwInputFields),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(labelText: AppTextString.firstName, prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: MainSizes.spaceBtwInputFields),

            /// Username
            TextFormField(
              expands: false,
              decoration: const InputDecoration(labelText: AppTextString.username, prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(height: MainSizes.spaceBtwInputFields),

            /// Email
            TextFormField(
              expands: false,
              decoration: const InputDecoration(labelText: AppTextString.email, prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(height: MainSizes.spaceBtwInputFields),

            /// Phone number
            TextFormField(
              expands: false,
              decoration: const InputDecoration(labelText: AppTextString.phone, prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(height: MainSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: AppTextString.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)
              ),
            ),
            const SizedBox(height: MainSizes.spaceBtwSections),

            /// Term&Conditions checkbox
            const AppTermsAndConditionsCheckbox(),
            const SizedBox(height: MainSizes.spaceBtwSections),

            /// SignUp Button
            SizedBox(width: double.infinity, child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmailScreen()),
                child: const Text(AppTextString.createAccount))),
            const SizedBox(height: MainSizes.spaceBtwSections),
          ],
        )
    );
  }
}

