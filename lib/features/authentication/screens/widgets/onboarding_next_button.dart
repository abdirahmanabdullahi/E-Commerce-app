import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

import '../../controllers.onboarding/onboarding_controller.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            side: const BorderSide(width: 0),
            shape: const CircleBorder(),
            backgroundColor: dark ? TColors.primary : TColors.black),
        onPressed: () {
          OnboardingController.instance.nextPage();
        },
        child: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
