import 'package:flutter/material.dart';

import 'components/add_a_task.dart';
import 'Screens/home_page.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  //initialize hive
  await Hive.initFlutter();
  //open the box
  await Hive.openBox('tasks');

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => AddATask()),
    ChangeNotifierProvider(create: (_) => AddATask2())
  ], child: const Main()));
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark));
    return const MaterialApp(home: Home());
  }
}
