import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/curved_edges/curverd_edge_widget.dart';
import 'package:e_commerce/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commerce/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/product_details_image_slider.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slide
            const TProductImageSlider(),

            /// 2 - Product details
            Padding(
              padding: EdgeInsets.only(
                  left: TSizes.defaultSpace,
                  right: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Rating & Share
                  TRatingAndShare(),

                  /// -- Price, Title,Stock & Brand
                  TProductMetaData(),

                  /// -- Attributes
                  TProductAttributes()

                  /// -- Checkout Button
                  /// -- Description
                  /// -- Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
