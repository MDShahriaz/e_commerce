import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('Coding with T'),
        Row(
          children: [
            const Icon(
              Icons.phone,
              size: 16,
              color: Colors.grey,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              '+88 01749852005',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              size: 16,
              color: Colors.grey,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Expanded(
              child: Text(
                'South Liana, Maine 87695, USA',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
