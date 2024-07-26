import 'package:e_commerce_seller/common/widgets/success_screens/success_screen.dart';
import 'package:e_commerce_seller/features/authentication/screens/login/login.dart';
import 'package:e_commerce_seller/utils/constants/image_strings.dart';
import 'package:e_commerce_seller/utils/constants/sizes.dart';
import 'package:e_commerce_seller/utils/constants/text_strings.dart';
import 'package:e_commerce_seller/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MainSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(AppImageString.deliveredEmailIllustration),
                width: AppHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: MainSizes.spaceBtwSections),

              /// Title and SubTitle
              Text(AppTextString.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: MainSizes.spaceBtwItems),
              Text('hoangvi080@gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: MainSizes.spaceBtwItems),
              Text(AppTextString.confirmEmailSubTile, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: MainSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => SuccessScreen(
                        image: AppImageString.staticSuccessIllustration,
                        title: AppTextString.yourAccountCreatedTitle,
                        subTitle: AppTextString.yourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => const LoginScreen()),
                      )),
                      child: const Text(AppTextString.appContinue))),
              const SizedBox(height: MainSizes.spaceBtwItems),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(AppTextString.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
