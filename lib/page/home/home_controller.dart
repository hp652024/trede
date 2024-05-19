import 'package:flutter/cupertino.dart';

  class HomeProvider with ChangeNotifier {
  bool _selectTab =true;
  bool get selectTab => _selectTab;

    void tabOne(){
      _selectTab = true;
      notifyListeners();
    }
  void tabTo(){
    _selectTab = false;
    notifyListeners();
  }
}