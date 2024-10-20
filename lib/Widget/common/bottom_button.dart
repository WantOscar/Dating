import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget? child;
  const BottomButton({super.key, this.onTap, this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: ThemeColor.fontColor,
            borderRadius: BorderRadius.circular(12.0)),
        child: child,
      ),
    );
  }
}
