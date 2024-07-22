
import 'package:flutter/material.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/home_view_body.dart';

class ChangePagesProvider extends ChangeNotifier {
  int currentIndex = 0;
  List<Widget> pages = [
    const HomeViewBody(),
   
  ];
  void changePage(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
