import 'package:flutter/material.dart';
import 'package:test_design/core/models/package_detail.dart';
import 'package:test_design/core/image_manger.dart';
import 'package:flutter_svg/svg.dart';

class PackageDetails extends StatelessWidget {
  const PackageDetails({super.key, required this.packageDetails});
  final List<PackageDetail> packageDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Package Details',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: const Color(0xFFF7FBFF),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: List.generate(packageDetails.length, (i) {
              final detail = packageDetails[i];
              final isLast = i == packageDetails.length - 1;
              return Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 26,
                        height: 26,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7FBFF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: SvgPicture.asset(ImageManger.sportsIcon),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            detail.label,
                            style: const TextStyle(
                              color: Color(0xff666666),
                              fontSize: 11,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            detail.value,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  if (!isLast)
                    Divider(
                      color: Colors.white.withValues(alpha: 0.07),
                      height: 20,
                    ),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}
