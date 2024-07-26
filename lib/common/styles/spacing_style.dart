import 'package:flutter/cupertino.dart';

import '../../utils/constants/sizes.dart';

class AppSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: MainSizes.appBarHeight,
    left: MainSizes.defaultSpace,
    right: MainSizes.defaultSpace,
    bottom: MainSizes.defaultSpace,
  );
}