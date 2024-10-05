import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/widgets/onboarding_dots_navigation.dart/onboarding_dots_navigator.dart';
import 'package:t_store/features/authentication/screens/widgets/onboarding_next_button.dart';
import 'package:t_store/features/authentication/screens/widgets/onboarding_skip/onboarding_page.dart';
import 'package:t_store/features/authentication/screens/widgets/onboarding_skip/onboarding_kip.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/text_strings.dart';

import '../controllers.onboarding/onboarding_controller.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
            ],
          ),
          const OnboardingSkip(),
          const OnboardingDotNavigator(),
          const OnboardingNextButton()
        ],
      ),
    );
  }
}
