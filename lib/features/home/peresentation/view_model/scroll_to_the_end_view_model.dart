import 'package:flutter/material.dart';

class ScrollControllerProvider with ChangeNotifier {
  final ScrollController scrollController = ScrollController();

  void scrollToEnd() {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
