import 'package:flutter/material.dart';
import 'package:jobify/core/colors/colors.dart';
import 'package:jobify/core/images/images.dart';

class NowModeBanner extends StatelessWidget {
  const NowModeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(30),
      width: double.infinity,

      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGrey,
            offset: Offset(0, 1),
            blurRadius: 6,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: AppColors.themeBlue,
        image:
            width < 600
                ? DecorationImage(
                  image: AssetImage(AppImages.nowModeBackground),
                  fit: BoxFit.cover,
                )
                : null,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Got a free hour?',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(color: AppColors.white),
          ),
          SizedBox(height: 5),
          SizedBox(
            // width: 210,
            width: width * 0.55,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Tap on our ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.white.withAlpha(170),
                    ),
                  ),
                  TextSpan(
                    text: 'Now Mode ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'to find jobs you can start right now.',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.white.withAlpha(170),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(AppColors.pastelBlue),
            ),
            child: Text(
              'Try Now',
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
