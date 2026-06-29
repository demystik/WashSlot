import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:washslot/core/common/widgets/app_button.dart';
import 'package:washslot/core/theme/app_text_styles.dart';
import 'package:washslot/features/auth/service/app_auth_service.dart';


import '../../../core/common/widgets/app_card.dart';
import '../../../core/common/widgets/app_text_field.dart';
import '../../../core/theme/app_spacing.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  bool _obscure = true;
  bool loading = false;
  final auth = AppAuthService();

  // Login Logic________________________
  Future<void> login () async{
    setState(()=> loading = true);

    try {
      await auth.signIn(
        email: _emailCtrl.text.trim(), 
        password: _passCtrl.text.trim()
      );
      // Navigate to dashboard______
    } on FirebaseAuthException catch (e) {
      if(!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message ?? "Login Failed")));
    }
    setState(()=> loading = false);
  }

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
    Size screenSize = MediaQuery.of(context).size;
    final logoSize = screenSize.width * 0.3;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  //Logo___________________________________________
                  Image.asset("assets/logos/logo.png", width: logoSize,),

                  // ── Header ─────────────────────────────────
                  Column(children: [

                  Text('Welcome Back',
                  textAlign: TextAlign.center,
                   style: AppTextStyles.displayMedium.copyWith(fontWeight: FontWeight.bold),),
                  const SizedBox(height: AppSpacing.xs),
                  SizedBox(
                    width: screenSize.width * 0.7,
                    child: Text(
                      'Access your account to book and track your car wash services.',
                      textAlign: TextAlign.center,
                      style: text.bodyMedium?.copyWith(
                        color: colors.onSurface.withValues(alpha: 0.55),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  ],),

                  // ── Form Card ──────────────────────────────
                  AppCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email Address", style: text.bodySmall?.copyWith(fontWeight: FontWeight.bold),),
                        SizedBox(height: AppSpacing.sm,),
                        AppTextField(
                          label: 'Email',
                          hint: 'you@example.com',
                          controller: _emailCtrl,
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: Icon(
                            Icons.mail_outline_rounded,
                            color: colors.onSurface.withValues(alpha: 0.4),
                          ),
                          validator: (v) => (v?.contains('@') ?? false)
                              ? null
                              : 'Enter a valid email',
                        ),
                        const SizedBox(height: AppSpacing.md),
                        Text("Password", style: text.bodySmall?.copyWith(fontWeight: FontWeight.bold),),
                        SizedBox(height: AppSpacing.sm,),
                        AppTextField(
                          label: 'Password',
                          controller: _passCtrl,
                          obscureText: _obscure,
                          prefixIcon: Icon(
                            Icons.lock_outline_rounded,
                            color: colors.onSurface.withValues(alpha: 0.4),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscure
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: colors.onSurface.withValues(alpha: 0.4),
                            ),
                            onPressed: () =>
                                setState(() => _obscure = !_obscure),
                          ),
                          validator: (v) => (v?.length ?? 0) >= 6
                              ? null
                              : 'Minimum 6 characters',
                        ),
                      ],
                    ),
                  ),

                  // ── Forgot Password ────────────────────────
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password?',
                        style: text.bodySmall?.copyWith(
                          color: colors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),

                  // ── Submit ─────────────────────────────────
                  AppButton(
                    label: loading ? 'Logining in...' : 'Login',
                    onPressed: loading ? null : () {
                      if (_formKey.currentState!.validate()) {
                        login;
                      }
                    },
                  ),
                  const SizedBox(height: AppSpacing.lg),

                  // Or continue with____________________
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(
                      height: 1,
                      width: screenSize.width * 0.2,
                      color: colors.secondary.withValues(alpha: 0.5),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm),
                      child: Text("OR CONTINUE WITH", style: text.bodySmall,),
                    ),
                    Container(
                      height: 1,
                      width: screenSize.width * 0.2,
                      color: colors.secondary.withValues(alpha: 0.5),
                    ),
                  ],),
                  const SizedBox(height: AppSpacing.lg),

                //Google SignIn Button______________________________

                AppButton(label: "Sign in with Google", onPressed: (){}, variant: AppButtonVariant.outlined,),


                  // ── Register redirect ──────────────────────
                  const SizedBox(height: AppSpacing.xl),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? ", style: text.bodyMedium),
                      GestureDetector(
                        onTap: () {
                          context.go("signup_screen");
                        },
                        child: Text(
                          'Sign Up',
                          style: text.bodyMedium?.copyWith(
                            color: colors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
