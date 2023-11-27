import 'package:e_commerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(body: LoginScreen()
        // Stack(
        //   children: [
        //     /// Horizontal Scrollable Page
        //     PageView(
        //       controller: controller.pageController,
        //       onPageChanged: controller.updatePageIndicator,
        //       children: const [
        //         OnBoardingPage(
        //           image: TImages.onBoardingImage1,
        //           title: TTexts.onBoardingTitle1,
        //           subtitle: TTexts.onBoardingSubTitle1,
        //         ),
        //         OnBoardingPage(
        //           image: TImages.onBoardingImage2,
        //           title: TTexts.onBoardingTitle2,
        //           subtitle: TTexts.onBoardingSubTitle2,
        //         ),
        //         OnBoardingPage(
        //           image: TImages.onBoardingImage3,
        //           title: TTexts.onBoardingTitle3,
        //           subtitle: TTexts.onBoardingSubTitle3,
        //         ),
        //       ],
        //     ),
        //     const OnBoardingSkip(),
        //     const OnBoardingDotNavigation(),
        //     const OnBoardingNextButton(),
        //   ],
        // ),
        );
  }
}
