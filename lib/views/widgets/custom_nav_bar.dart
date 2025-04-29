import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jobify/core/colors/colors.dart';

class CustomNavBar extends ConsumerWidget {
  final int selectedIndex;
  final List<CustomNavItem> items;
  final ValueChanged<int> onTabChange;
  final PageController pageController;

  const CustomNavBar({
    super.key,
    required this.selectedIndex,
    required this.items,
    required this.onTabChange,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;

    final textFactor = MediaQuery.of(context).textScaler;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final item = items[index];
          final isSelected = index == selectedIndex;

          return GestureDetector(
            onTap: () {
              onTabChange(index);
              pageController.jumpToPage(index);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.linear,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color:
                    isSelected
                        ? AppColors.darkgGey.withAlpha(50)
                        : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  _CustomIcon(
                    icon: item.icon,
                    iconData: item.iconData,
                    color: Theme.of(context).primaryColor,
                    size: textFactor.scale(24),
                  ),
                  if (isSelected) ...[
                    SizedBox(width: width * 0.04),
                    Text(
                      item.text,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ],
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class _CustomIcon extends StatelessWidget {
  final IconData? iconData;
  final ImageProvider? icon;
  final Color color;
  final double size;

  const _CustomIcon({
    this.iconData,
    this.icon,
    required this.color,
    required this.size,
  }) : assert(iconData != null || icon != null);

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return Image(image: icon!, width: size, height: size, color: color);
    } else {
      return Icon(iconData, size: size, color: color);
    }
  }
}

class CustomNavItem {
  final String text;
  final IconData? iconData;
  final ImageProvider? icon;

  CustomNavItem({required this.text, this.iconData, this.icon})
    : assert(iconData != null || icon != null);
}
