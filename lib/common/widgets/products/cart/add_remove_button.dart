import 'package:e_commerce/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductQuantityAddAndRemoveButton extends StatelessWidget {
  const TProductQuantityAddAndRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        const SizedBox(
          width: 70,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TCircularIcon(
              icon: Iconsax.minus,
              width: 32,
              height: 32,
              size: TSizes.md,
              color: dark ? TColors.white : TColors.black,
              backgroundColor: dark ? TColors.darkerGrey : TColors.light,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              '2',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            const TCircularIcon(
                icon: Iconsax.add,
                width: 32,
                height: 32,
                size: TSizes.md,
                color: TColors.white,
                backgroundColor: TColors.primaryColor),
          ],
        ),
      ],
    );
  }
}
