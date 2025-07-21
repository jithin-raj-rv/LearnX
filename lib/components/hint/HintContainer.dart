import 'package:flutter/material.dart';

class HintContainer extends StatelessWidget {
  const HintContainer({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withAlpha(100),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          // Icon for hint
          Icon(Icons.lightbulb, 
            color: Theme.of(context).colorScheme.secondary,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // heading
              Text(
                "Hint",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),

              Text(hintText,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}