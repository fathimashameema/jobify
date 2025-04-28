import 'package:flutter/material.dart';

class HeadingRow extends StatelessWidget {
  final String heading;
  const HeadingRow({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              heading,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),

          Icon(Icons.splitscreen),
        ],
      ),
    );
  }
}
