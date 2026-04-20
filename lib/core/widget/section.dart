import 'package:flutter/cupertino.dart';

class Section extends StatelessWidget {
  const Section({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
      child: child,
    );
  }
}
