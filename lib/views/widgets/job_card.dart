import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobify/core/colors/colors.dart';
import 'package:jobify/core/images/images.dart';
import 'package:jobify/models/job_model.dart';

class JobCard extends StatelessWidget {
  final JobModel job;
  const JobCard({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 340),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGrey,
            offset: Offset(0, 1),
            blurRadius: 6,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(job.profileImage),
                    backgroundColor: AppColors.pastelBlue,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.black, width: 0.5),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: 168,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          job.jobTitle,
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),

                        Text(
                          job.companyName,
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              GestureDetector(
                child: Image.asset(AppImages.bookmark, height: 20, width: 20),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.darkgGey,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 15,
                          color: AppColors.white,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          job.location,
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 15,
                        color: AppColors.grey,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        job.datetime,
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '₹${job.payment}',
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor,
                ),
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      Theme.of(context).primaryColor,
                    ),
                  ),
                  child: Text(
                    'Apply',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).cardColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
