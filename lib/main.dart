import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization_example/router/custom_router.dart';
import 'package:localization_example/router/route_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

//TODO: implement setLocale
}

class _MyAppState extends State<MyApp> {
  // TODO: define local and setLocale and on didChangedependies initilas

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localization',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
        Locale('fa'), // Spanish
        Locale('hi'), // Spanish
      ],
      // locale: Locale('ar'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // TODO: implement localizations
      onGenerateRoute: CustomRouter.generatedRoute,
      initialRoute: homeRoute,
    );
  }
}
