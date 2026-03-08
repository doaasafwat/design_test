import 'package:flutter/material.dart';

class BottomActions extends StatelessWidget {
  const BottomActions({
    super.key,
    required this.onPrimaryButton,
    required this.primaryButtonLabel,
    required this.onSecondaryButton,
    required this.secondaryButtonLabel,
  });
  final VoidCallback onPrimaryButton;
  final String primaryButtonLabel;
  final VoidCallback onSecondaryButton;
  final String secondaryButtonLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 52,
          child: ElevatedButton(
            onPressed: onPrimaryButton,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1D4FD8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 0,
            ),
            child: Text(
              primaryButtonLabel,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(height: 14),
        GestureDetector(
          onTap: onSecondaryButton,
          child: Center(
            child: Text(
              secondaryButtonLabel,
              style: const TextStyle(
                color: Color(0xFF1D4FD8),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
