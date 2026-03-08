import 'package:flutter/material.dart';
import 'package:test_design/core/models/package_detail.dart';
import 'package:test_design/core/models/program_stats.dart';
import 'package:test_design/features/progress/widgets/progress_card.dart';

class MyProgressScreen extends StatelessWidget {
  const MyProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyProgressCard(
      pageTitle: 'My Progress',
      programName: 'Therapy Training Program',
      programDuration: '3 Months | Tue &Mon',
      isActive: true,
      activeLabel: 'Active Program',
      completedSessions: 12,
      totalSessions: 20,
      stats: const ProgramStats(
        capacityMin: 10,
        capacityMax: 30,
        level: 'Beginner',
        field: 'Therapy',
      ),
      coachName: 'Dr Ahmed',
      onCoachTap: () => debugPrint('Coach tapped'),
      location:
          'Gaza, 6th October City, 2nd District, Hassanein Ibrahim Street',
      onViewMap: () => debugPrint('View map'),
      packageDetails: const [
        PackageDetail(
          label: 'Start & End Date',
          value: '12 Oct, 2025 – 25 Dec, 2025',
          icon: Icons.calendar_today,
        ),
        PackageDetail(
          label: 'Academy',
          value: 'Ace Academy',
          icon: Icons.school,
        ),
        PackageDetail(
          label: 'Package expiry',
          value: 'Valid until 20 Dec, 2025',
          icon: Icons.access_time,
        ),
      ],
      primaryButtonLabel: 'view on calender',
      onPrimaryButton: () => debugPrint('View calendar'),
      secondaryButtonLabel: 'View Receipt',
      onSecondaryButton: () => debugPrint('View receipt'),
      onBack: () => Navigator.pop(context),
    );
  }
}
