import 'package:flutter/material.dart';

class InputKeyButton extends StatelessWidget {
  final dynamic child;
  const InputKeyButton({super.key, this.child})
      : assert(child != null, "반드시 자식 위젯이 필요합니다!");

  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(12.0),
        highlightColor: Colors.white70,
        onTap: () {},
        child: AspectRatio(aspectRatio: 1, child: _buildButton()));
  }

  Widget _buildButton() {
    switch (child.runtimeType) {
      case String:
        return _numberButton();
      case IconData:
        return _iconButton();
      default:
        return Container();
    }
  }

  Widget _numberButton() => Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: const Color(0xff9DB2BF)),
        child: Center(
          child: Text(
            child,
            style: const TextStyle(color: Colors.black54, fontSize: 40),
          ),
        ),
      );

  Widget _iconButton() => Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: const Color(0xff526D82)),
        child: Center(
          child: Icon(
            child,
            color: Colors.white70,
            size: 40,
          ),
        ),
      );
}
