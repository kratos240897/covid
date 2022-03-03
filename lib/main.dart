import 'package:covid_details/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_loggy/flutter_loggy.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Loggy.initLoggy(
    logPrinter: const PrettyDeveloperPrinter(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Covid live',
        theme: ThemeData(
          primarySwatch: Colors.lime,
        ),
        initialRoute: AppRouter.HOME,
        onGenerateRoute: AppRouter().generateRoutes);
  }
}
