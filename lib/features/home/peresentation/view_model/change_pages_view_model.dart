import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/home_view_body.dart';
import 'package:school_system_abs/features/home/peresentation/view_model/scroll_to_the_end_view_model.dart';

class ChangePagesProvider extends ChangeNotifier {
  int currentIndex = 0;
  List<Widget> pages = [
    ChangeNotifierProvider(
        create: (_) => ScrollControllerProvider(), child: const HomeViewBody()),
    Text("jhghfhgfhhgfhgf"),
  ];
  void changePage(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
