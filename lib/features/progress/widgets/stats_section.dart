import 'package:flutter/material.dart';
import 'package:test_design/core/models/program_stats.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key, required this.stats});
  final ProgramStats stats;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _statItem('Capacity', '${stats.capacityMin} - ${stats.capacityMax}'),
          _statDivider(),
          _statItem('Level', stats.level, icon: Icons.arrow_back_ios_outlined),
          _statDivider(),
          _statItem('Field', stats.field),
        ],
      ),
    );
  }
}

Widget _statItem(String label, String value, {IconData? icon}) {
  return Column(
    children: [
      Text(
        label,
        style: const TextStyle(color: Color(0xff999999), fontSize: 12),
      ),
      const SizedBox(height: 6),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            RotatedBox(
              quarterTurns: 1,
              child: Icon(icon, color: Color(0xff1D4ED8), size: 16),
            ),
            const SizedBox(width: 4),
          ],
          Text(
            value,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _statDivider() {
  return Container(width: 1, height: 30, color: Color(0xffE6E6E6));
}
