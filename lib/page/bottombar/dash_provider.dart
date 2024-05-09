import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier
{
  int pageIndex=0;

  void chnagePageIndex(int index)
  {
    pageIndex=index;
    notifyListeners();
  }
}