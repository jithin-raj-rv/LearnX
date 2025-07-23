import 'package:flutter/material.dart';

class Longbuttonnobg extends StatelessWidget {
  const Longbuttonnobg({super.key,required this.text, required this.onPressed});
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: ElevatedButton(onPressed:onPressed,
      style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.tertiary, // Use primary color from theme
            shadowColor: Theme.of(context).colorScheme.secondary,
            elevation: 0,
            minimumSize: Size(double.infinity, 60), // Full width button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
              color: Theme.of(context).colorScheme.primary, // Border color
            ), // Rounded corners
            ),
          ),
          // brand logo
       child: Center(
         child: Text(text,
           style: Theme.of(context).textTheme.bodyLarge?.copyWith(
             color: Theme.of(context).colorScheme.primary, // Text color
           )
         ),
       ),
    ),
        );
  }
}