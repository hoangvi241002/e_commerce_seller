import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_seller/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_seller/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_seller/features/shop/screens/home/widgets/home_brands.dart';
import 'package:e_commerce_seller/features/shop/screens/home/widgets/home_promo_slider.dart';
import 'package:e_commerce_seller/utils/constants/colors.dart';
import 'package:e_commerce_seller/utils/constants/image_strings.dart';
import 'package:e_commerce_seller/utils/constants/sizes.dart';
import 'package:e_commerce_seller/utils/device/device_utility.dart';
import 'package:e_commerce_seller/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/containers/header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/images/app_rounded_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  AppHomeAppBar(),
                  SizedBox(height: MainSizes.spaceBtwSections),

                  /// SearchBar
                  AppSearchContainer(text: 'Search in Store'),
                  SizedBox(height: MainSizes.spaceBtwSections),

                  /// Categories
                  AppHomeBrands()
                ],
              ),
            ),

            /// Banner
            Padding(
              padding: EdgeInsets.all(MainSizes.defaultSpace),
              child: AppPromoSlider(banners: [AppImageString.promoBanner4, AppImageString.promoBanner3,
                AppImageString.promoBanner2,AppImageString.promoBanner1]
              )
            )
          ],
        ),
      ),
    );
  }
}









