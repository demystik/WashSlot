import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: AppSpacing.md,),
              //Image containers_______________________
              Container(
                width: screenSize.width * 0.7,
                height: screenSize.width * 0.7,
                padding: EdgeInsets.all(AppSpacing.sm),
                decoration: BoxDecoration(
                  color: appColorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(AppRadius.lg),
                  border: Border.all(width: 8, color: appColorScheme.onSecondary),
                  image: DecorationImage(
                  fit: BoxFit.cover,
                    image: NetworkImage("https://images.unsplash.com/photo-1607860108855-64acf2078ed9?q=80&w=1171&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1.2,
                      offset: Offset(0, 0),
                    color: appColorScheme.surfaceContainerHighest
                  ),
                  ],
                ),
              ),

              // Onboarding Messages______________________
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                      textAlign: TextAlign.center,
                      "Find trusted car wash services and reserve your preferred time with just a few taps",
                      style: AppTextStyles.bodyMedium.copyWith(color: appColorScheme.outline, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: AppSpacing.md),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
              AppButton(label: "Get Started", onPressed: (){
                context.push("second_onboarding_screen");
              }),
              SizedBox(height: AppSpacing.sm,),
              AppButton(label: "I already have an account", 
              variant: AppButtonVariant.outlined,
              onPressed: (){
                context.go("/login_screen");
              }),
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
