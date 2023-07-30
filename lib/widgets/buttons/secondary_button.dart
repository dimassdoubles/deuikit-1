import 'package:flutter/material.dart';
import 'package:ui_kit/colors/app_colors.dart';

enum SecondaryButtonVariants {
  positive,
  negative,
  inActive,
  loading,
}

enum SecondaryButtonSize {
  large,
  medium,
  small,
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    this.variant = SecondaryButtonVariants.positive,
    this.size = SecondaryButtonSize.medium,
    this.label,
    this.onPressed,
  });
  final SecondaryButtonVariants variant;
  final SecondaryButtonSize size;
  final String? label;
  final void Function()? onPressed;

  static const backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    late final Color color;
    late final double height;
    late final double fontSize;
    late final double loadingSize;
    late final Widget child;

    switch (size) {
      case SecondaryButtonSize.large:
        height = 48;
        fontSize = 16;
        loadingSize = 4;
        break;
      case SecondaryButtonSize.medium:
        height = 40;
        fontSize = 14;
        loadingSize = 3;
        break;
      case SecondaryButtonSize.small:
        height = 32;
        fontSize = 12;
        loadingSize = 2;
        break;
    }

    switch (variant) {
      case SecondaryButtonVariants.positive:
        color = AppColors.primary;
        child = Text(label ?? '');
        break;
      case SecondaryButtonVariants.negative:
        color = AppColors.error;
        child = Text(label ?? '');
        break;
      case SecondaryButtonVariants.inActive:
        color = AppColors.accent3;
        child = Text(label ?? '');
        break;
      case SecondaryButtonVariants.loading:
        color = AppColors.primary;
        child = SizedBox(
          height: fontSize,
          width: fontSize,
          child: CircularProgressIndicator(
            color: color,
            strokeWidth: loadingSize,
          ),
        );
        break;
    }

    return OutlinedButton(
      onPressed: () {
        if (variant == SecondaryButtonVariants.positive ||
            variant == SecondaryButtonVariants.negative) {
          onPressed?.call();
        }
      },
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: color,
        side: BorderSide(
          color: color,
          width: 1,
        ),
        minimumSize: const Size(0, 0),
        maximumSize: Size(double.infinity, height),
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        elevation: 0,
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
