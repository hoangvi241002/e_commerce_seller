import 'package:e_commerce_seller/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:e_commerce_seller/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/header_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edge_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppHeaderContainer(
              child: Container()
            )
          ],
        ),
      ),
    );
  }
}



