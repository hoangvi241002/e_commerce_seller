import 'package:e_commerce_seller/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/header_container.dart';

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
                  AppHomeAppBar()
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}



