import 'package:flutter/cupertino.dart';

class FocusChange{
static void fieldFocusChange(BuildContext context, FocusNode current,FocusNode nextFocus){
  current.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}
}