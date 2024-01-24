import 'package:e_commerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerce/common/widgets/products/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                        backgroundImage: AssetImage(TImages.userProfileImage1)),
                    const SizedBox(width: TSizes.spaceBtwItems),
                    Text(
                      'John Doe',
                      style: Theme.of(context).textTheme.titleLarge,
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                ),
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),

            /// Review
            Row(
              children: [
                TRatingBarIndicator(rating: 4),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text(
                  '1 NOV, 2023',
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            ReadMoreText(
              'The user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly. Greate job!',
              trimLines: 2,
              trimMode: TrimMode.Line,
              trimExpandedText: ' show less',
              trimCollapsedText: ' show more',
              moreStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: TColors.primaryColor),
              lessStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: TColors.primaryColor),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// Company Review
            TRoundedContainer(
              backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
              child: Padding(
                padding: EdgeInsets.all(TSizes.md),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "T's Store",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          '01 JAN 2024',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    ReadMoreText(
                      'The user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly. Greate job!',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimExpandedText: ' show less',
                      trimCollapsedText: ' show more',
                      moreStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: TColors.primaryColor),
                      lessStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: TColors.primaryColor),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
          ],
        ),
      ),
    );
  }
}
