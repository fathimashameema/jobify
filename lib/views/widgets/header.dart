import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:jobify/core/colors/colors.dart';
import 'package:jobify/core/images/images.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                'Location',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall!.copyWith(color: AppColors.white),
              ),
            ),
            Row(
              children: [
                Icon(Icons.location_on_outlined, color: AppColors.black),
                SizedBox(width: 7),
                Text(
                  'Calicut',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(color: AppColors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              HugeIcons.strokeRoundedCrown,
              color: AppColors.black,
              size: 27,
            ),
            SizedBox(width: 16),
            Stack(
              children: [
                Icon(
                  HugeIcons.strokeRoundedNotification02,
                  color: AppColors.black,
                  size: 27,
                ),
              ],
            ),
            SizedBox(width: 16),
            CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage(AppImages.profile),
            ),
          ],
        ),
      ],
    );
  }
}
