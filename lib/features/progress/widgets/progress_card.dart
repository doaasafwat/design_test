import 'package:flutter/material.dart';
import 'package:test_design/core/models/package_detail.dart';
import 'package:test_design/core/models/program_stats.dart';
import 'package:test_design/core/widgets/app_bar.dart';
import 'package:test_design/features/progress/widgets/bottom_actions.dart';
import 'package:test_design/features/progress/widgets/coach_section.dart';
import 'package:test_design/features/progress/widgets/program_header.dart';
import 'package:test_design/features/progress/widgets/stats_section.dart';
import 'package:test_design/features/progress/widgets/location_section.dart';
import 'package:test_design/features/progress/widgets/package_details.dart';
import 'package:test_design/features/progress/widgets/progress_section.dart';

class MyProgressCard extends StatelessWidget {
  // Program info
  final String programName;
  final String programDuration;
  final bool isActive;
  final String activeLabel;

  // Progress
  final int completedSessions;
  final int totalSessions;

  // Stats row
  final ProgramStats stats;

  // Coach
  final String coachName;
  final VoidCallback onCoachTap;

  // Location
  final String location;
  final VoidCallback onViewMap;

  // Package details
  final List<PackageDetail> packageDetails;

  // Bottom actions
  final String primaryButtonLabel;
  final VoidCallback onPrimaryButton;
  final String secondaryButtonLabel;
  final VoidCallback onSecondaryButton;

  // Back button
  final VoidCallback onBack;
  final String pageTitle;

  const MyProgressCard({
    super.key,
    required this.programName,
    required this.programDuration,
    required this.isActive,
    required this.activeLabel,
    required this.completedSessions,
    required this.totalSessions,
    required this.stats,
    required this.coachName,
    required this.onCoachTap,
    required this.location,
    required this.onViewMap,
    required this.packageDetails,
    required this.primaryButtonLabel,
    required this.onPrimaryButton,
    required this.secondaryButtonLabel,
    required this.onSecondaryButton,
    required this.onBack,
    required this.pageTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            MyAppBar(onBack: onBack, pageTitle: pageTitle),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    ProgramHeader(
                      programName: programName,
                      programDuration: programDuration,
                      isActive: isActive,
                      activeLabel: activeLabel,
                    ),
                    const SizedBox(height: 16),
                    ProgressSection(
                      completedSessions: completedSessions,
                      totalSessions: totalSessions,
                    ),
                    const SizedBox(height: 16),
                    StatsSection(stats: stats),
                    const SizedBox(height: 16),
                    CoachSection(coachName: coachName, onCoachTap: onCoachTap),
                    const SizedBox(height: 20),
                    LocationSection(location: location, onViewMap: onViewMap),
                    const SizedBox(height: 20),
                    PackageDetails(packageDetails: packageDetails),
                    const SizedBox(height: 24),
                    BottomActions(
                      onPrimaryButton: onPrimaryButton,
                      primaryButtonLabel: primaryButtonLabel,
                      onSecondaryButton: onSecondaryButton,
                      secondaryButtonLabel: secondaryButtonLabel,
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
