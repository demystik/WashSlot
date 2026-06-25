import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:washslot/core/common/widgets/app_text_field.dart';

class AuthNameField extends StatelessWidget {
  const AuthNameField({super.key, required this.fullNameCtrl});
  final TextEditingController fullNameCtrl;

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;
    return AppTextField(
      label: 'Full Name',
      hint: 'John Doe',
      controller: fullNameCtrl,
      keyboardType: TextInputType.name,
      prefixIcon: Icon(
        LucideIcons.usersRound,
        color: colors.onSurface.withValues(alpha: 0.4),
      ),
      validator: (v) {
        if (v == null || v.trim().isEmpty) {
          return 'Enter your full name';
        }

        if (v.trim().split(' ').length < 2) {
          return 'Enter your first and last name';
        }

        return null;
      },
    );
  }
}
