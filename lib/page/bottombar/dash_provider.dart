import 'package:flutter/material.dart';

class DashProvider extends ChangeNotifier
{
  int pageIndex=0;

  void changePageIndex(int index)
  {
    pageIndex=index;
    notifyListeners();
  }
}