import 'package:e_commerce_seller/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerce_seller/utils/constants/sizes.dart';
import 'package:e_commerce_seller/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(MainSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Heading
            Text(AppTextString.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: MainSizes.spaceBtwItems),
            Text(AppTextString.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: MainSizes.spaceBtwSections * 2),

            /// Text field
            TextFormField(decoration: const InputDecoration(labelText: AppTextString.email, prefixIcon: Icon(Iconsax.direct_right))),
            const SizedBox(height: MainSizes.spaceBtwSections),

            /// Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.off(() => const ResetPassword()), child: const Text(AppTextString.submit)))
          ],
        ),
      ),
    );
  }
}
