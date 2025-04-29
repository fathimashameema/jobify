import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobify/core/colors/colors.dart';
import 'package:jobify/core/images/images.dart';

class StudentDiscount extends StatelessWidget {
  const StudentDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    final textFactor = MediaQuery.of(context).textScaler;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [AppColors.pastelDarkGreem, AppColors.pastelBlue],
          stops: [0.0, 0.9],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Image.asset(AppImages.moneyBag, width: 35, height: 35),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Student discounts!',
                            // style: Theme.of(context).textTheme.titleSmall,
                            style: GoogleFonts.roboto(
                              fontSize: textFactor.scale(16),
                              color: AppColors.themeBlue,
                            ),
                          ),
                          Image.asset(
                            AppImages.moneyBag,
                            width: 15,
                            height: 15,
                          ),
                        ],
                      ),
                      Text(
                        'Exclusive deals just for you.',
                        style: GoogleFonts.roboto(
                          fontSize: textFactor.scale(12),
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Claim',
                style: GoogleFonts.roboto(color: AppColors.themeBlue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
