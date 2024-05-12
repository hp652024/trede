import 'package:moneytomoney/page/bottombar/dash_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';


List<SingleChildWidget> providerClass=[
  ChangeNotifierProvider(create: (context) => HomeProvider(),),
];