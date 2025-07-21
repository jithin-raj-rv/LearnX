import 'package:flutter/material.dart';

class Howto extends StatelessWidget {
  const Howto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.secondary.withAlpha(100),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Icon(Icons.help_outline),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                "Drag a word from the word bank and drop it into the blank space or type your answer:",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}