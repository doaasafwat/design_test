import 'package:flutter/material.dart';
import 'package:test_design/core/image_manger.dart';

class ProgressSection extends StatelessWidget {
  const ProgressSection({
    super.key,
    required this.completedSessions,
    required this.totalSessions,
  });
  final int completedSessions;
  final int totalSessions;

  @override
  Widget build(BuildContext context) {
    final double progress = completedSessions / totalSessions;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF7FBFF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 49,
                height: 49,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset(ImageManger.progressImage),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Total Progress',
                    style: TextStyle(color: Color(0xff666666), fontSize: 12),
                  ),
                  const SizedBox(height: 2),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$completedSessions',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: ' / $totalSessions Sessions',
                          style: const TextStyle(
                            color: Color(0xff666666),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 14),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: progress,
              minHeight: 8,
              backgroundColor: const Color(0xFFE6E6E6),
              valueColor: const AlwaysStoppedAnimation<Color>(
                Color(0xFF4F8EF7),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _legendDot(const Color(0xFF4F8EF7), 'Completed'),
              const SizedBox(width: 16),
              _legendDot(const Color(0xFFE6E6E6), 'Remaining'),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _legendDot(Color color, String label) {
  return Row(
    children: [
      Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
      const SizedBox(width: 6),
      Text(label, style: const TextStyle(color: Colors.black, fontSize: 12)),
    ],
  );
}
