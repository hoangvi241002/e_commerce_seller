import 'package:e_commerce_seller/features/authentication/screens/login/login.dart';
import 'package:e_commerce_seller/utils/constants/image_strings.dart';
import 'package:e_commerce_seller/utils/constants/sizes.dart';
import 'package:e_commerce_seller/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MainSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(image: const AssetImage(AppImageString.deliveredEmailIllustration), width: AppHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: MainSizes.spaceBtwSections),

              /// Title and SubTitle
              Text(AppTextString.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: MainSizes.spaceBtwItems),
              Text(AppTextString.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: MainSizes.spaceBtwSections),

              /// Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.off(() => const LoginScreen()), child: const Text(AppTextString.done))),
              const SizedBox(height: MainSizes.spaceBtwItems),
              SizedBox(width: double.infinity, child: TextButton(onPressed: () {}, child: const Text(AppTextString.resendEmail))),
            ],
          )
        ),
      ),
    );
  }
}
