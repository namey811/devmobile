import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });
}


const appMenuItems = <MenuItem>[

  MenuItem(
    title: 'Login', 
    subTitle: 'Ingreso Aplicacion', 
    link: '/login', 
    icon: Icons.login
  ),
  MenuItem(
    title: 'Registro Clientes', 
    subTitle: 'Permite registrar a los clientes', 
    link: '/formclientes', 
    icon: Icons.add
  ),

  MenuItem(
    title: 'Perfil', 
    subTitle: 'Edita tu informacion', 
    link: '/profile', 
    icon: Icons.person
  ),
    MenuItem(
    title: 'Cambio de clave', 
    subTitle: 'Cambio de clave', 
    link: '/changepassword', 
    icon: Icons.password_rounded
  ),
    MenuItem(
    title: 'Configuracion', 
    subTitle: 'Ajustes generales', 
    link: '/settings', 
    icon: Icons.settings
  ),
      MenuItem(
    title: 'Salir', 
    subTitle: 'Cerrar sesion en el sistema', 
    link: '/logout', 
    icon: Icons.login_rounded
  ),
];