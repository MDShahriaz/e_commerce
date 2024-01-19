import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/curved_edges/curverd_edge_widget.dart';
import 'package:e_commerce/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commerce/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(TImages.productImage5),
                  ),
                ),
              ),
            ),

            /// - Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace / 2,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (_, index) => TRoundedImage(
                          width: 80,
                          border: Border.all(color: TColors.primaryColor),
                          padding: const EdgeInsets.all(TSizes.sm),
                          backgroundColor: dark ? TColors.dark : TColors.white,
                          applyImageRadius: true,
                          imageUrl: TImages.productImage3,
                        ),
                    separatorBuilder: (_, __) => SizedBox(
                          width: TSizes.spaceBtwItems,
                        ),
                    itemCount: 10),
              ),
            ),

            /// App bar icons
            TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
