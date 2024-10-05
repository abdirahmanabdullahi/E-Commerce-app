import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../login/widgets/terma_and_conditions_checkbox.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              //First name
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const Gap(TSizes.spaceBtwInputFields),

              //Last name
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const Gap(TSizes.spaceBtwInputFields),

          //Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.username, prefixIcon: Icon(Iconsax.user)),
          ),
          const Gap(TSizes.spaceBtwInputFields),

          //Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const Gap(TSizes.spaceBtwInputFields),

          //Phone number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const Gap(TSizes.spaceBtwInputFields),

          //password

          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
              prefixIcon: Icon(Iconsax.password_check),
            ),
          ),
          const Gap(TSizes.spaceBtwSections),

          //Terms and conditions Checkbox
          const TermsAndConditionsCheckBox(),
          const Gap(TSizes.spaceBtwSections),
          //SignUpButton
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: const Text(TTexts.createAccount)),
          )
        ],
      ),
    );
  }
}
