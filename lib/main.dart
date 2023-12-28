import 'package:ecommercecourse1/bindings/initial_bindings.dart';
import 'package:ecommercecourse1/core/services/services.dart';
import 'package:ecommercecourse1/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Cairo",
        textTheme: const TextTheme(
            headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 25 , color:Colors.white,
               ),
            bodyText1: TextStyle(
                height: 2,
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 20,

            )),
        primarySwatch: Colors.grey,
      ),
     initialBinding: InitialBindings(),
     // routes: routes,
      getPages: routes,
    );
  }
}