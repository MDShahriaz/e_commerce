import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class TProductReviewsScreen extends StatelessWidget {
  const TProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that you use'),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Row(
                children: [
                  Text(
                    '4.8',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems / 2,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '5',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Expanded(
                          child: SizedBox(
                            width: TDeviceUtils.getScreenWidth(context) * .5,
                            child: LinearProgressIndicator(
                              value: 0.5,
                              minHeight: 25,
                              backgroundColor: TColors.grey,
                              borderRadius: BorderRadius.circular(7),
                              valueColor:
                                  AlwaysStoppedAnimation(TColors.primaryColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
