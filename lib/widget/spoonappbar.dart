import 'package:flutter/material.dart';

class SpoonAppBar extends StatelessWidget implements PreferredSize {
  @override
  final Widget child;
  final double height;
  final List<Widget> leftItems;
  final List<Widget> rightItems;

  const SpoonAppBar({
    super.key,
    this.height = kToolbarHeight,
    this.leftItems = const [],
    this.rightItems = const [],
    required this.child,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: preferredSize.height,
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 16),
              child: Row(
                children: leftItems,
              ),
            ),
            child,
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Row(
                children: rightItems,
              ),
            )
          ],
        ));
  }
}
