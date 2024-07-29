import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class AppHomeBrands extends StatelessWidget {
  const AppHomeBrands({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: MainSizes.defaultSpace),
      child: Column(
        children: [
          /// Heading
          const AppSectionHeading(title: 'Popular Brands', showActionButton: false),
          const SizedBox(height: MainSizes.spaceBtwItems),

          /// Categories
          SizedBox(
            height: 80,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return AppVerticalImageText(image: AppImageString.diorBrand, title: 'Dior', onTap: () {},);
                }
            ),
          )
        ],
      ),
    );
  }
}
