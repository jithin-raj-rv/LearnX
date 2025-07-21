import 'package:flutter/material.dart';

class Previousbutton extends StatelessWidget {
  const Previousbutton({super.key,required this.text, required this.onPressed});
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextButton(onPressed:onPressed,
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
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
            // Icon for previous button
            Padding(
               padding: const EdgeInsets.only(right: 4.0),
               child: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.primary),
             ),
            //  Text for previous button
             Text(text,
               style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                 color: Theme.of(context).colorScheme.primary, // Text color
               )
             ),
           ],
         ),
      ),
    ));
  }
}