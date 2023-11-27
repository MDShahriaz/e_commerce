import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Image(
            width: TSizes.iconMd,
            height: TSizes.iconMd,
            image: AssetImage(TImages.google),
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Container(
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Image(
            width: TSizes.iconMd,
            height: TSizes.iconMd,
            image: AssetImage(TImages.facebook),
          ),
        ),
      ],
    );
  }
}
