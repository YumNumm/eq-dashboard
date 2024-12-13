import 'package:flutter/widgets.dart';
import 'package:macos_ui/macos_ui.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentArea(
      builder: (context, scrollController) {
        return const Center(
          child: Text('Page One Content'),
        );
      },
    );
  }
}
