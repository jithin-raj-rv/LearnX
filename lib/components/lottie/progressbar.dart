import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Progressbar extends StatelessWidget {
  const Progressbar({super.key,required this.url, required this.width,this.trimfactor = 0.3});
  final String url;
  final double width;
  final double trimfactor;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
            child: Align(
              alignment: Alignment.center,
              heightFactor: trimfactor,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Theme.of(context).primaryColor,
                  BlendMode.srcATop,
                ),
                child: Lottie.network(
                  url,
                  width: width,
                  errorBuilder: (context, error, stackTrace) {
                    return CircularProgressIndicator();
                  },
                ),
              ),
            ),
          );
  }
}