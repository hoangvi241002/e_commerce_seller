import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edge_widgets.dart';
import 'circular_container.dart';

class AppHeaderContainer extends StatelessWidget {
  const AppHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppCurvedEdgeWidget(
      child: SizedBox(
        child: Container(
          height: 400,
          color: MainColors.secondary,
          child: Stack(
            children: [
              Positioned(top: -150, right: -250, child: AppCircularContainer(backgroundColor: MainColors.white.withOpacity(0.1))),
              Positioned(top: 100, right: -300,child: AppCircularContainer(backgroundColor: MainColors.white.withOpacity(0.1))),
              child,
            ],
          ),
        )
      ),
    );
  }
}
