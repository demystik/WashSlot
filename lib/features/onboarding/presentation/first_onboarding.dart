import 'package:flutter/material.dart';
import 'package:washslot/core/common/widgets/app_button.dart';
import 'package:washslot/core/theme/app_spacing.dart';
import 'package:washslot/core/theme/app_text_styles.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
  Size screenSize = MediaQuery.of(context).size;
  ColorScheme appColorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: AppSpacing.md,),
              //Image containers_______________________
              Container(
                width: 200,
                height: 200,
                padding: EdgeInsets.all(AppSpacing.sm),
                decoration: BoxDecoration(
                  
                  color: appColorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(AppRadius.md),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1.2,
                      offset: Offset(0, 0),
                    color: appColorScheme.surfaceContainerHighest
                  ),
                  ],
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppRadius.md),
                  color: Colors.blue,
                  ),
                ),
              ),

              // Onboarding Messages______________________
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Book Car Washes", style: AppTextStyles.displayMedium),
                  Text(
                    "Easily",
                    style: AppTextStyles.displayMedium.copyWith(
                      color: appColorScheme.primary,
                    ),
                  ),
                  SizedBox(height: AppSpacing.md),
                  SizedBox(
                    width: screenSize.width * 0.7,
                    child: Text(
                      "Find trusted car wash services and reserve your preferred time with just a few taps",
                      style: AppTextStyles.bodyMedium.copyWith(color: appColorScheme.outline, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: AppSpacing.md),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 7,
                        decoration: BoxDecoration(
                        color: appColorScheme.primary,
                        borderRadius: BorderRadius.circular(AppRadius.lg),
                      ),),
                      SizedBox(width: AppSpacing.sm,),
                      Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                        color: appColorScheme.outline,
                        borderRadius: BorderRadius.circular(AppRadius.lg),
                      ),),
                    ],
                  ),
                ],
              ),

              // Buttons___________________
              Column(children: [
              AppButton(label: "Get Started", onPressed: (){}),
              SizedBox(height: AppSpacing.sm,),
              AppButton(label: "I already have an account", 
              variant: AppButtonVariant.outlined,
              onPressed: (){}),
              SizedBox(height: AppSpacing.sm,),
              Text("By continuing, you agree to our Terms and Privacy Policy", style: AppTextStyles.labelSmall,),
              SizedBox(height: AppSpacing.lg,),
              ],),
            ],
          ),
        ),
      ),
    );
  }
}
