import 'package:flutter/material.dart';

class Menu extends StatelessWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  const Menu({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: Column(
          children: [
            Image.asset("security.png", width: 60, height: 60,),
            const Text("Menu Principal"),
            const SizedBox(height: 15,),
            ListTile(
              title: const Text("Registro Clientes"),
              subtitle: const Text("Permite registrar a los clientes"),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.pushNamed(context, '/formclientes');
                scaffoldKey.currentState?.closeDrawer();
                
              },
              
            ),

            ListTile(
              title: const Text("Perfil"),
              subtitle: const Text("Edita tu informacion"),
              leading: const Icon(Icons.person),
              onTap: () {
                Navigator.pushNamed(context, '/');
                
              },
            ),
            ListTile(
              title: const Text("Configuracion"),
              subtitle: const Text("Cambia los ajustes"),
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Unitecnar APP"),

      ),
      body: const Center(
        child: Text("BIENVENIDOS"),
      ),
    );
  }
}