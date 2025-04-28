import 'package:flutter/material.dart';
import 'package:jobify/models/job_model.dart';

class JobCard extends StatelessWidget {
  final JobModel job;
  const JobCard({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 340),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFF7F7F7),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(2, 1, 81, 0.15),
              offset: Offset(0, 1),
              blurRadius: 10,
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(job.profileImage),
                    ),
                    const SizedBox(width: 8),
                    SizedBox(
                      width: 168,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            job.jobTitle,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            job.companyName,
                            style: const TextStyle(
                              color: Color(0xFF767676),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Image.network(job.menuImage, width: 26, height: 26),
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
                        color: const Color.fromRGBO(2, 1, 81, 0.5),
                      ),
                      child: Row(
                        children: [
                          // Image.network(
                          //   job.locationIcon,
                          //   width: 13,
                          //   height: 13,
                          // ),
                          const SizedBox(width: 4),
                          Text(
                            job.location,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        // Image.network(job.timeIcon, width: 13, height: 13),
                        const SizedBox(width: 4),
                        Text(
                          job.datetime,
                          style: const TextStyle(
                            color: Color(0xFF767676),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        // Image.network(job.currencyIcon, width: 10, height: 19),
                        const SizedBox(width: 1),
                        Text(
                          job.payment,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        // const Text(
                        //   '/hr',
                        //   style: TextStyle(
                        //     color: Colors.black,
                        //     fontSize: 14,
                        //     fontWeight: FontWeight.w500,
                        //     fontFamily: 'Roboto',
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFF020151),
                    ),
                    child: const Text(
                      'Apply',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
