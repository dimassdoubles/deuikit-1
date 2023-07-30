import 'package:flutter/material.dart';
import 'package:ui_kit/colors/app_colors.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Colors"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              color: AppColors.primary,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text('Primary'),
              ),
            ),
            Container(
              color: AppColors.secondary,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text('Secondary'),
              ),
            ),
            Container(
              color: AppColors.tertiary,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text('Tertiary'),
              ),
            ),
            Container(
              color: AppColors.accent1,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text('Accent 1'),
              ),
            ),
            Container(
              color: AppColors.accent2,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text('Accent 2'),
              ),
            ),
            Container(
              color: AppColors.accent3,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text('Accent 3'),
              ),
            ),
            Container(
              color: AppColors.accent4,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text('Accent 4'),
              ),
            ),
            Container(
              color: AppColors.success,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text('Success'),
              ),
            ),
            Container(
              color: AppColors.warning,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text('Warning'),
              ),
            ),
            Container(
              color: AppColors.error,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text('Error'),
              ),
            ),
            Container(
              color: AppColors.info,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text('Info'),
              ),
            ),
            Container(
              color: AppColors.primaryText,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text(
                  'Primary Text',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              color: AppColors.secondaryText,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text('Secondary Text'),
              ),
            ),
            Container(
              color: AppColors.primaryBackground,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text('Primary Background'),
              ),
            ),
            Container(
              color: AppColors.secondaryBackground,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text('Secondary Background'),
              ),
            ),
            Container(
              color: AppColors.border,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text('Border'),
              ),
            ),
            Container(
              color: AppColors.divider,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text('Divider'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
