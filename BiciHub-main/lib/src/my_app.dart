import 'package:bici_hub/src/pages/login-page.dart';
import 'package:bici_hub/src/pages/services_page.dart';
import 'package:bici_hub/src/pages/statusC_page.dart';
import 'package:flutter/material.dart';

import 'package:bici_hub/src/pages/home_page.dart';
import 'package:bici_hub/src/pages/status_page.dart';
import 'package:bici_hub/src/pages/maps_page.dart';
import 'package:bici_hub/src/pages/request_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: "login",
      routes: {
        "home": (_) => HomePage(),
        "status": (_) => StatusPage(),
        "maps": (_) => MapsPage(),
        "request": (_) => RequestPage(),
        "services":(_)=>Services(),
        "statusC": (_)=>StatusC(),
        "login": (_)=>Login()
      },
      home: HomePage(),
    );
  }
}
