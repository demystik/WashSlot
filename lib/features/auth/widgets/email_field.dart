import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:washslot/core/common/widgets/app_text_field.dart';

class AuthEmailField extends StatelessWidget {
  const AuthEmailField({super.key, required this.emailCtrl});

  final TextEditingController emailCtrl;

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;
    return AppTextField(
      label: 'Email',
      hint: 'you@example.com',
      controller: emailCtrl,
      keyboardType: TextInputType.emailAddress,
      prefixIcon: Icon(
        LucideIcons.mail,
        color: colors.onSurface.withValues(alpha: 0.4),
      ),
      validator: (v) =>
          (v?.contains('@') ?? false) ? null : 'Enter a valid email',
    );
  }
}
