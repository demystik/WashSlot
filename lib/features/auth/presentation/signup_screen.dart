import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:washslot/core/common/widgets/app_card.dart';
import 'package:washslot/core/theme/app_spacing.dart';
import 'package:washslot/core/theme/app_text_styles.dart';
import 'package:washslot/features/auth/widgets/name_field.dart';
import 'package:washslot/features/auth/widgets/email_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _fullNameCtrl = TextEditingController();

  @override
  void dispose() {
    _emailCtrl.dispose();
    _fullNameCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    ColorScheme colors = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.lg),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Headers____________________________________________
                Image.asset(
                  "assets/logos/logo.png",
                  width: screenSize.width * 0.3,
                ),
                Text(
                  "WashSlot",
                  style: AppTextStyles.titleLarge.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colors.primary,
                  ),
                ),
                Text(
                  "Create Account",

                  style: AppTextStyles.titleLarge.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colors.onSurface,
                    height: 1.6,
                  ),
                ),
                const Text("Join the community of clean cars"),
                SizedBox(height: AppSpacing.md),

                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      AppCard(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Full Name",
                              style: AppTextStyles.bodySmall.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: AppSpacing.sm),
                            AuthNameField(fullNameCtrl: _fullNameCtrl),
                            SizedBox(height: AppSpacing.sm),
                            Text(
                              "Email Address",
                              style: AppTextStyles.bodySmall.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: AppSpacing.sm),
                            AuthEmailField(emailCtrl: _emailCtrl),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: AppSpacing.lg,),
                SizedBox(height: AppSpacing.lg,),
                GestureDetector(
                  onTap: (){
                    context.go("/admin_dashboard");
                  },
                  child: Text("Owner"),
                ),
                SizedBox(height: AppSpacing.lg,),
                GestureDetector(
                  onTap: (){},
                  child: Text("Client"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
