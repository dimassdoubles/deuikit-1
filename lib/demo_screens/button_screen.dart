import 'package:flutter/material.dart';
import 'package:ui_kit/widgets/buttons/primary_button.dart';
import 'package:ui_kit/widgets/buttons/secondary_button.dart';
import 'package:ui_kit/widgets/buttons/tertiary_button.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  static const positive = "Positive";
  static const negative = "Negative";
  static const inActive = "In Active";

  static const primary = "Primary";
  static const secondary = "Secondary";
  static const tertiary = "Tertiary";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: const [
            PrimaryButton(
              variant: PrimaryButtonVariants.positive,
              label: "$primary $positive",
            ),
            PrimaryButton(
              variant: PrimaryButtonVariants.negative,
              label: "$primary $negative",
            ),
            PrimaryButton(
              variant: PrimaryButtonVariants.inActive,
              label: "$primary $inActive",
            ),
            PrimaryButton(
              variant: PrimaryButtonVariants.loading,
            ),
            SecondaryButton(
              variant: SecondaryButtonVariants.positive,
              label: "$secondary $positive",
            ),
            SecondaryButton(
              variant: SecondaryButtonVariants.negative,
              label: "$secondary $negative",
            ),
            SecondaryButton(
              variant: SecondaryButtonVariants.inActive,
              label: "$secondary $inActive",
            ),
            SecondaryButton(
              variant: SecondaryButtonVariants.loading,
            ),
            TertiaryButton(
              variant: TertiaryButtonVariants.positive,
              label: "$tertiary $positive",
            ),
            TertiaryButton(
              variant: TertiaryButtonVariants.negative,
              label: "$tertiary $negative",
            ),
            TertiaryButton(
              variant: TertiaryButtonVariants.inActive,
              label: "$tertiary $inActive",
            ),
            TertiaryButton(
              variant: TertiaryButtonVariants.loading,
              label: "Hello World!",
            ),
          ],
        ),
      ),
    );
  }
}
