import 'package:flutter/material.dart';
import 'package:washslot/core/theme/app_spacing.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.variant = AppButtonVariant.primary,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;
  final AppButtonVariant variant;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return SizedBox(
      height: 52,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          elevation: variant == AppButtonVariant.outlined ? 0 : 2,
          backgroundColor: variant == AppButtonVariant.outlined ? colors.onPrimary : colors.primary,
          shape: variant == AppButtonVariant.outlined ? RoundedRectangleBorder(
            side: BorderSide(width: 1),
            borderRadius: BorderRadius.circular(AppRadius.md),
          ) : RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.md),
          ),
        ),
        child: isLoading
            ? const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : Text(
                label,
                style: variant == AppButtonVariant.outlined ? text.titleMedium?.copyWith(color: colors.onSurface, fontWeight: FontWeight.w400) : text.titleMedium?.copyWith(color: colors.onPrimary),
              ),
      ),
    );
  }
}

enum AppButtonVariant { primary, outlined, ghost }
