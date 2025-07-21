import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  const LongButton({super.key,required this.onPressed, required this.text});
  final void Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: ElevatedButton(onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary, // Use primary color from theme
          shadowColor: Theme.of(context).colorScheme.primary, // Shadow color
          elevation: 0,
          minimumSize: Size(double.infinity, 60), // Full width button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Rounded corners
          ),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).colorScheme.secondary, // Ensure text color matches theme
          ),
        ),
      
      ),
    );
  }
}