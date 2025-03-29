import 'package:devmobile/presentation/screen/menu/menu_dinamico.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
     final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('DEVMOBILE'),
      ),
      drawer: MenuDinamico(scaffoldKey: scaffoldKey),
      body: const Center(
        child: Text('BIENVENIDOS A UNITECNAR')
      ),
    );
  }
}