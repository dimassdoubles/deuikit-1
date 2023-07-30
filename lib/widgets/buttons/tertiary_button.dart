import 'package:flutter/material.dart';
import 'package:ui_kit/colors/app_colors.dart';

enum TertiaryButtonVariants {
  positive,
  negative,
  inActive,
  loading,
}

enum TertiaryButtonSize {
  large,
  medium,
  small,
}

class TertiaryButton extends StatelessWidget {
  const TertiaryButton({
    super.key,
    this.variant = TertiaryButtonVariants.positive,
    this.size = TertiaryButtonSize.medium,
    this.label,
    this.onPressed,
  });
  final TertiaryButtonVariants variant;
  final TertiaryButtonSize size;
  final String? label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    late final Color color;
    late final double height;
    late final double fontSize;
    late final double loadingSize;
    late final Widget child;

    switch (size) {
      case TertiaryButtonSize.large:
        height = 48;
        fontSize = 16;
        loadingSize = 4;
        break;
      case TertiaryButtonSize.medium:
        height = 40;
        fontSize = 14;
        loadingSize = 3;
        break;
      case TertiaryButtonSize.small:
        height = 32;
        fontSize = 12;
        loadingSize = 2;
        break;
    }

    switch (variant) {
      case TertiaryButtonVariants.positive:
        color = AppColors.primary;
        child = Text(label ?? '');
        break;
      case TertiaryButtonVariants.negative:
        color = AppColors.error;
        child = Text(label ?? '');
        break;
      case TertiaryButtonVariants.inActive:
        color = AppColors.accent3;
        child = Text(label ?? '');
        break;
      case TertiaryButtonVariants.loading:
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

    return ElevatedButton(
      onPressed: () {
        if (variant == TertiaryButtonVariants.positive ||
            variant == TertiaryButtonVariants.negative) {
          onPressed?.call();
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color.withAlpha(50),
        foregroundColor: color,
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
