import 'package:devmobile/presentation/screen/cards/cards_screen.dart';
import 'package:devmobile/presentation/screen/animated/animated_screen.dart';
import 'package:devmobile/presentation/screen/formularios/form_clientes.dart';
import 'package:devmobile/presentation/screen/login/login_screen.dart';
import 'package:devmobile/presentation/screen/menu/menu_dinamico.dart';
import 'package:devmobile/presentation/screen/stack/stack_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Curso Mobile",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuDinamico(scaffoldKey: scaffoldKey,),
      routes: <String, WidgetBuilder> {
      '/registerclientes': (BuildContext context) => const FormClientes(),
      '/login': (BuildContext context) => const LoginScreen(),
      '/cards': (BuildContext context) => const CardsScreen(),
      '/animated': (BuildContext context) => const AnimetedScreen(),
      '/stack': (BuildContext context) => const StackScreen(),
    },
    );
  }
}