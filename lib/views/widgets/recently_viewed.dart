import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobify/controllers/job_controller.dart';
import 'package:jobify/core/colors/colors.dart';
import 'package:jobify/models/recently_viewed_hive.dart';
import 'package:jobify/views/screens/job_details.dart';
import 'package:jobify/views/widgets/job_card.dart';

class RecentlyViewed extends ConsumerWidget {
  const RecentlyViewed({super.key, required this.context, required this.state});

  final BuildContext context;
  final AsyncValue<List<RecentlyViewedHive>> state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return state.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),

      data: (values) {
        final jobs = values.reversed.toList(); 

        if (jobs.isEmpty) {
          return Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Once you check out a job, it’ll show up right here for easy access.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: AppColors.grey,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).primaryColor,
                  ),

                  child: TextButton.icon(
                    iconAlignment: IconAlignment.end,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        Theme.of(context).primaryColor,
                      ),
                    ),
                    onPressed: () {},
                    label: Text(
                      'Browse Jobs',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.lightGreen,
                      ),
                    ),

                    icon: Icon(
                      Icons.arrow_forward_outlined,
                      color: AppColors.lightGreen,
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        return SizedBox(
          height: 230,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: jobs.length,
            itemBuilder: (context, index) {
              final jobHive = jobs[index];
              final job = jobHive.job;
              if (job == null) return const SizedBox.shrink();

              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    ref
                        .read(jobControllerProvider.notifier)
                        .addToRecentlyViewed(job);
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (ctx) => JobDetails()));
                  },
                  child: JobCard(job: job),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
