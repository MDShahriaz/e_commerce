import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/devider.dart';
import 'widgets/login_form.dart';
import '../../../../common/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark_theme = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              TLoginHeader(
                dark: dark_theme,
              ),
              const TLoginForm(),

              /// Devider
              TFormDivider(
                dividerText: TTexts.orSignInWith.capitalize,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
