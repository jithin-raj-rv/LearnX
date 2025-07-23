import 'package:flutter/material.dart';

class ButtonTwo extends StatelessWidget {
  const ButtonTwo({super.key, required this.content, required this.onPressed});
  final String content;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextButton(onPressed:() {
          // Handle button press
          onPressed();
        },
        style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.tertiary, // Use primary color from theme
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
         child: Text(content),
         ),
      ),
    );
  }
}