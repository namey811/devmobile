import 'package:devmobile/config/menu/menu_items.dart';
import 'package:flutter/material.dart';

class MenuDinamico extends StatelessWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  const MenuDinamico({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: Column(
          children: [
            Image.asset("security.png", width: 60, height: 60),
            const Text("Menu Principal"),
           const SizedBox(height: 15,),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: appMenuItems.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                      ListTile(
                        title: Text(appMenuItems[index].title),
                        subtitle: Text(appMenuItems[index].subTitle),
                        leading: Icon(appMenuItems[index].icon),
                        onTap: () {
                          //print('Índice seleccionado: $index');
                          Navigator.pushNamed(context, appMenuItems[index].link);
                          scaffoldKey.currentState?.closeDrawer();
                          
                        },
                        
                      ),
                  ],
                );
              },
              
              
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Unitecnar APP"),

      ),
      body: const Center(
        child: Text("BIENVENIDOS A LA APLICACION UNITECNAR!"),
      ),
    );
  }
}