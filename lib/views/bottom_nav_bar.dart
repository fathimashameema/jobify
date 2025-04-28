import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:jobify/core/colors/colors.dart';
import 'package:jobify/views/screens/activity.dart';
import 'package:jobify/views/screens/home_page.dart';
import 'package:jobify/views/screens/jobs.dart';
import 'package:jobify/views/screens/saved.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final PageController pageController = PageController();
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [HomePage(), Jobs(), Activity(), Saved()],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
        child: GNav(
          selectedIndex: selectedIndex,
          color: Theme.of(context).primaryColor,
          activeColor: Theme.of(context).primaryColor,
          tabBackgroundColor: AppColors.lightGrey,
          padding: EdgeInsets.all(10),
          gap: 8,
          tabs: [
            GButton(icon: HugeIcons.strokeRoundedHome09, text: 'Home'),
            GButton(icon: HugeIcons.strokeRoundedWork, text: 'Jobs'),
            GButton(icon: HugeIcons.strokeRoundedStatus, text: 'Activity'),
            GButton(icon: HugeIcons.strokeRoundedBookmark02, text: 'Saved'),
          ],
          onTabChange: (value) {
            setState(() {
              selectedIndex = value;
              pageController.jumpToPage(value);
            });
          },
        ),
      ),
    );
  }
}
