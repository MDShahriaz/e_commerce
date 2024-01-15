import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/device/device_utility.dart';
import '../curved_edges/curverd_edge_widget.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -259,
              child: TCircularContainer(
                backgroundColor: TColors.textWhite.withOpacity(0.1),
                width: TDeviceUtils.getScreenWidth(context),
                height: TDeviceUtils.getScreenHeight() * 0.525,
              ),
            ),
            Positioned(
              top: 80,
              right: -300,
              child: TCircularContainer(
                backgroundColor: TColors.textWhite.withOpacity(0.1),
                width: TDeviceUtils.getScreenWidth(context),
                height: TDeviceUtils.getScreenHeight() * 0.525,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
