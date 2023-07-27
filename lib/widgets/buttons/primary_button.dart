import 'package:flutter/material.dart';
import 'package:ui_kit/colors/app_colors.dart';

enum PrimaryButtonVariants {
  positive,
  negative,
  inActive,
  loading,
}

enum PrimaryButtonSize {
  large,
  medium,
  small,
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.variant = PrimaryButtonVariants.positive,
    this.size = PrimaryButtonSize.medium,
    this.label,
    this.onPressed,
  });
  final PrimaryButtonVariants variant;
  final PrimaryButtonSize size;
  final String? label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    late final Color backgroundColor;
    late final Color foregroundColor;
    late final double height;
    late final double fontSize;
    late final double loadingSize;
    late final Widget child;

    switch (size) {
      case PrimaryButtonSize.large:
        height = 48;
        fontSize = 16;
        loadingSize = 4;
        break;
      case PrimaryButtonSize.medium:
        height = 40;
        fontSize = 14;
        loadingSize = 3;
        break;
      case PrimaryButtonSize.small:
        height = 32;
        fontSize = 12;
        loadingSize = 2;
        break;
    }

    switch (variant) {
      case PrimaryButtonVariants.positive:
        backgroundColor = BrandColors.primary;
        foregroundColor = Colors.white;
        child = Text(label ?? '');
        break;
      case PrimaryButtonVariants.negative:
        backgroundColor = SemanticColors.error;
        foregroundColor = Colors.white;
        child = Text(label ?? '');
        break;
      case PrimaryButtonVariants.inActive:
        backgroundColor = AccentColors.accent3;
        foregroundColor = Colors.white;
        child = Text(label ?? '');
        break;
      case PrimaryButtonVariants.loading:
        backgroundColor = BrandColors.primary;
        foregroundColor = Colors.white;
        child = SizedBox(
          height: fontSize,
          width: fontSize,
          child: CircularProgressIndicator(
            color: foregroundColor,
            strokeWidth: loadingSize,
          ),
        );
        break;
    }

    return ElevatedButton(
      onPressed: () {
        if (variant == PrimaryButtonVariants.positive ||
            variant == PrimaryButtonVariants.negative) {
          onPressed?.call();
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
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
