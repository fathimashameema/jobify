import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jobify/controllers/state_controllers.dart';
import 'package:jobify/core/images/images.dart';
import 'package:jobify/views/screens/activity.dart';
import 'package:jobify/views/screens/home_page.dart';
import 'package:jobify/views/screens/jobs.dart';
import 'package:jobify/views/screens/saved.dart';
import 'package:jobify/views/widgets/custom_nav_bar.dart';

class BottomNavBar extends ConsumerStatefulWidget {
  const BottomNavBar({super.key});

  @override
  ConsumerState<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends ConsumerState<BottomNavBar> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(bottomNavBarProvider);

    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [HomePage(), Jobs(), Activity(), Saved()],
      ),
      bottomNavigationBar: CustomNavBar(
        selectedIndex: selectedIndex,
        items: [
          CustomNavItem(text: 'Home', icon: AssetImage(AppImages.homeIcon)),
          CustomNavItem(
            text: 'Jobs',
            icon: AssetImage(AppImages.opportunityIcon),
          ),
          CustomNavItem(text: 'Activity', icon: AssetImage(AppImages.activity)),
          CustomNavItem(text: 'Saved', icon: AssetImage(AppImages.saved)),
        ],
        onTabChange: (value) {
          ref.read(bottomNavBarProvider.notifier).state = value;
          pageController.jumpToPage(value);
        },
        pageController: pageController,
      ),
    );
  }
}
