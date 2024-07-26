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
      child: Container(
        color: MainColors.secondary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(top: -150, right: -250, child: AppCircularContainer(backgroundColor: MainColors.white.withOpacity(0.1))),
              Positioned(top: 100, right: -300,child: AppCircularContainer(backgroundColor: MainColors.white.withOpacity(0.1))),
            ],
          ),
        ),
      ),
    );
  }
}
