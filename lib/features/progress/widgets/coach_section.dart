import 'package:flutter/material.dart';
import 'package:test_design/core/image_manger.dart';

class CoachSection extends StatelessWidget {
  const CoachSection({
    super.key,
    required this.coachName,

    required this.onCoachTap,
  });
  final String coachName;
  final VoidCallback onCoachTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF7FBFF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: const Color(0xFFF7FBFF),

            child: Image.asset(ImageManger.coachImage),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Head Coach',
                  style: TextStyle(color: Color(0xff666666), fontSize: 11),
                ),
                const SizedBox(height: 3),
                Text(
                  coachName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: onCoachTap,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
