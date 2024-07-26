import 'package:e_commerce_seller/features/authentication/screens/onboarding/widgets/onboarding_dot.dart';
import 'package:e_commerce_seller/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:e_commerce_seller/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_seller/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce_seller/utils/constants/image_strings.dart';
import 'package:e_commerce_seller/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/onboarding/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: AppImageString.onBoardingImg1,
                title: AppTextString.onBoardingTitle1,
                subTitle: AppTextString.onBoardingSubtitle1,
              ),
              OnBoardingPage(
                image: AppImageString.onBoardingImg2,
                title: AppTextString.onBoardingTitle2,
                subTitle: AppTextString.onBoardingSubtitle2,
              ),
              OnBoardingPage(
                image: AppImageString.onBoardingImg3,
                title: AppTextString.onBoardingTitle3,
                subTitle: AppTextString.onBoardingSubtitle3,
              ),
            ],
          ),
          // Skip Button
          const OnboardingSkip(),
          // Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),
          // Circular Button
          const OnBoardingNextButton(),
        ],
      )
    );
  }
}







