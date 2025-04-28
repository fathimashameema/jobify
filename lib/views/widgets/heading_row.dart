import 'package:flutter/material.dart';

class HeadingRow extends StatelessWidget {
  final String heading;
  final Icon icon;
  const HeadingRow({super.key, required this.heading, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              heading,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          icon,
        ],
      ),
    );
  }
}
