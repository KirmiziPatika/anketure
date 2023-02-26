import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final String? title;
  final Widget? rightWidgets;
  final Widget? leftWidgets;
  TopBar({
    super.key,
    required this.child,
    this.leftWidgets,
    this.rightWidgets,
    this.backgroundColor,
    this.title,
  });
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, p1) {
        return top(p1);
      },
    );
  }

  Scaffold top(BoxConstraints p1) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      body: GestureDetector(
        onVerticalDragUpdate: (details) {
          scrollController.jumpTo(scrollController.offset - details.delta.dy);
        },
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    leftWidgets ?? const SizedBox(),
                    rightWidgets ?? const SizedBox(),
                  ],
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
