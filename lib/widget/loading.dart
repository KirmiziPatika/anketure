import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final String? image;
  final Color? backgroundColor;
  final Color? progressColor;
  const LoadingWidget({
    super.key,
    this.image,
    this.backgroundColor,
    this.progressColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              image ?? "",
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: progressColor ?? Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
