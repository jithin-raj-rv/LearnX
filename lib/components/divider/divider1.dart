import 'package:flutter/material.dart';

class Divider1 extends StatelessWidget {
  const Divider1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Theme.of(context).colorScheme.primary,
                    indent: 25,
                    endIndent: 10,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "or continue with",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Theme.of(context).colorScheme.primary,
                    indent: 10,
                    endIndent: 25,
                  ),
                ),
              ],
            );
            }
          }