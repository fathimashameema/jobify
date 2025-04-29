import 'package:flutter/material.dart';
import 'package:jobify/core/images/images.dart';

class HeadingRow extends StatelessWidget {
  final String heading;
  final EdgeInsetsGeometry? padding;

  const HeadingRow({super.key, required this.heading, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              heading,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),

          Image.asset(AppImages.menuIcon, height: 20, width: 20),
        ],
      ),
    );
  }
}
