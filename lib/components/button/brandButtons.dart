import 'package:flutter/material.dart';

class Brandbuttons extends StatelessWidget {
  const Brandbuttons({super.key,required this.brandLogo});
  final Icon brandLogo;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextButton(onPressed:() {
          
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
         child: brandLogo,
         ),
      ),
    );
  }
}