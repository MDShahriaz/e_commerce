import 'package:e_commerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          TCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
          if (showAddRemoveButtons)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    TProductQuantityAddAndRemoveButton(),
                  ],
                ),
                TProductPriceText(price: '256'),
              ],
            ),
        ],
      ),
    );
  }
}
