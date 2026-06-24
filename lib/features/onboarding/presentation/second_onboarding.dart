import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:washslot/core/common/widgets/app_button.dart';
import 'package:washslot/core/theme/app_spacing.dart';
import 'package:washslot/core/theme/app_text_styles.dart';
import  'package:lucide_icons_flutter/lucide_icons.dart';

class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
      Size screenSize = MediaQuery.of(context).size;
  ColorScheme appColorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.lg),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              // Image container___________________
              SizedBox(height: AppSpacing.lg),
              Stack(
                children: [
                  Container(width: screenSize.width * 0.7, height: screenSize.width * 0.7, decoration: BoxDecoration(
                    border: Border.all(width: 3, color: appColorScheme.onSecondary),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://images.unsplash.com/photo-1520340356584-f9917d1eea6f?q=80&w=1331&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
                    color: appColorScheme.primary,
                    borderRadius: BorderRadius.circular(AppSpacing.xl),
                    boxShadow: [BoxShadow(
                      offset: Offset(8, 12),
                      blurRadius: 20.0,
                      spreadRadius: 8.0,
                      color: Colors.black26,
                    )]
                  ),),
                  Positioned(
                    bottom: 0,
                    right: 7,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: AppRadius.sm),
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppRadius.md),
                    color: appColorScheme.onSecondary,
                  ),
                  child: Row(children: [
                    Icon(LucideIcons.circleCheck, size: 20,),
                    SizedBox(width: AppSpacing.md,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("STATUS", style: AppTextStyles.labelSmall,),
                      Text("Confirmed", style: AppTextStyles.labelMedium.copyWith(fontWeight: FontWeight.bold),),
                    ],),
                  ],),
                  ),),
                ],
              ),

          // On-Boarding Messages_____________________
          SizedBox(height: AppSpacing.lg),
          Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  Text("Get Instant", style: AppTextStyles.displayMedium),
                  Text(
                    "Confirmation",
                    style: AppTextStyles.displayMedium.copyWith(
                      color: appColorScheme.primary,
                    ),
                  ),
                  SizedBox(height: AppSpacing.md),
                  SizedBox(
                    width: screenSize.width * 0.7,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Your appointment is automatically confirmed and reserved the moment you book. No more waiting!",
                      style: AppTextStyles.bodyMedium.copyWith(color: appColorScheme.outline, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: AppSpacing.md),                 
                ],
              ),
              // Buttons___________________
               SizedBox(height: AppSpacing.lg), 
              Column(children: [
              AppButton(label: "Get Started", onPressed: (){
                context.pop();
              }),
              SizedBox(height: AppSpacing.sm,),
              AppButton(label: "Log in", 
              variant: AppButtonVariant.outlined,
              onPressed: (){
                context.go("/login_screen");
              }),
              SizedBox(height: AppSpacing.lg,),
              ],),
            ],
          ),
        ),
      ),
    );
  }
}
