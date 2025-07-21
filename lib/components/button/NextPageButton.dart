import 'package:flutter/material.dart';

class NextPageButton extends StatelessWidget {
  const NextPageButton({super.key,required this.text, required this.onPressed});
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextButton(onPressed:onPressed,
        style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary, // Use primary color from theme
              elevation: 0,
              minimumSize: Size(double.infinity, 55), // Full width button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
            ),
            // brand logo
         child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(text,
               style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                 color: Theme.of(context).colorScheme.onPrimary, // Text color
               )
             ),
             Padding(
               padding: const EdgeInsets.only(left: 4.0),
               child: Icon(Icons.arrow_forward, color: Theme.of(context).colorScheme.secondary),
             ),
           ],
         ),
      ),
    ));
  }
}