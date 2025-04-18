import 'package:devmobile/config/router/app_router.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: "Desarrollo Aplicaciones Moviles",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      )
    );
  }
}