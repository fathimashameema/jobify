import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobify/controllers/job_controller.dart';
import 'package:jobify/controllers/state_controllers.dart';
import 'package:jobify/core/colors/colors.dart';
import 'package:jobify/core/images/images.dart';
import 'package:jobify/core/jobs/jobs.dart';
import 'package:jobify/models/job_model.dart';
import 'package:jobify/views/screens/job_details.dart';
import 'package:jobify/views/widgets/header.dart';
import 'package:jobify/views/widgets/heading_row.dart';
import 'package:jobify/views/widgets/job_card.dart';
import 'package:jobify/views/widgets/now_mode_banner.dart';
import 'package:jobify/views/widgets/recently_viewed.dart';
import 'package:jobify/views/widgets/student_discount.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
  

    final recentlyViewedJobs = ref.watch(jobControllerProvider);
    final isActive = ref.watch(nowModeProvider);

    return Scaffold(
      body: Column(
        children: [
          Container(
            // width: double.infinity,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.lightGreen,
                  AppColors.darkGreen,
                  AppColors.themeBlue,
                ],
                stops: [0.0, 0.5519, 0.8317],
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Header(),
                    Row(
                      children: [
                        Expanded(
                          child: SearchBar(
                            leading: Icon(
                              Icons.search,
                              color: AppColors.lightGrey.withAlpha(170),
                            ),
                            hintText: 'Search',
                            trailing: [
                              Image.asset(
                                AppImages.filter,
                                height: 20,
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),

                        Column(
                          children: [
                            Text(
                              'Now Mode',
                              style: Theme.of(context).textTheme.labelSmall!
                                  .copyWith(color: AppColors.white),
                            ),
                            SizedBox(height: 5),

                            // Switch(value: false, onChanged: (value) {}),
                            FlutterSwitch(
                              value: isActive,
                              onToggle: (value) {
                                ref.read(nowModeProvider.notifier).state =
                                    value;
                              },
                              inactiveColor: AppColors.white,
                              activeColor: AppColors.themeBlue,
                              activeToggleColor: AppColors.white,
                              toggleColor: AppColors.themeBlue,
                              toggleSize: 30,
                              padding: 1,
                              width: 65,
                              height: 30,
                            ),
                          ],
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        'Join our prime family',

                        style: GoogleFonts.racingSansOne(
                          fontSize: 25,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    StudentDiscount(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        'Students Get It Cheaper 🎓✨',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: AppColors.semiTransparent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    SizedBox(height: 20),

                    NowModeBanner(),
                    HeadingRow(heading: 'Recently viewed'),
                    RecentlyViewed(context: context, state: recentlyViewedJobs),

                    HeadingRow(
                      heading: 'New Gigs just in',
                      padding: EdgeInsets.only(top: 20),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: alljobs().length,
                      itemBuilder: (context, index) {
                        List<JobModel> jobs = alljobs();
                        final job = jobs[index];

                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () {
                              ref
                                  .read(jobControllerProvider.notifier)
                                  .addToRecentlyViewed(job);

                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (ctx) => JobDetails(job: job),
                                ),
                              );
                            },
                            child: JobCard(job: job),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
