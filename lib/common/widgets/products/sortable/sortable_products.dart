import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/TProductCardVertical.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.sort),
            ),
            onChanged: (value) {},
            items: [
              'Name',
              'Higher Price',
              'Lower Price',
              'Newest',
              'Popularity'
            ]
                .map((option) =>
                    DropdownMenuItem(value: option, child: Text(option)))
                .toList()),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        TGridLayout(
            itemCount: 8, itemBuilder: (_, index) => TProductCardVertical())
      ],
    );
  }
}
