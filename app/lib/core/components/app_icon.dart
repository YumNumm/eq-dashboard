import 'package:flutter/widgets.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({required this.size, super.key});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/app_icon.png',
      width: size,
      height: size,
    );
  }
}
