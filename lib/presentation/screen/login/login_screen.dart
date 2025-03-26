import 'package:devmobile/clases/login.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final usuario = TextEditingController();
  final clave = TextEditingController();

    @override
  void dispose() {
    usuario.dispose();
    clave.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de sesion'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("login.png", width: 64, height: 64),
            const Text("INICIO DE SESION"),
            const SizedBox(height: 15,),
            Form(
              key: _formkey,
              child: Column(
                children: [
                      TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Usuario",
                        hintText: "Ingrese su usuario",
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.person),
                      ),
                      controller: usuario,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Por favor ingrese su usuario";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                      TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Clave",
                        hintText: "Ingrese su clave",
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.person),
                      ),
                      controller: clave,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Por favor ingrese su clave";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      child: const Text("Iniciar sesion"),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Procesando...')),);
                          //print("Usuario: ${usuario.text}");
                          //print("Clave: ${clave.text}");
                          Login l = Login();
            
                          
                          if(l.validarUsuario(usuario.text, clave.text)){
                            Navigator.pushNamed(context, '/formclientes');
                          }else{
                            ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Usuario y/o clave invalidos'),
                            ),
                          );
                              _formkey.currentState!.reset();
                          }
                          
            
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Verifica los campos del formulario'),
                            ),
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 15,),
                    GestureDetector(
                            onTap: () {
                              // Acción cuando se presiona el texto
                             // print("Redirigiendo a restablecer contraseña");
                            },
                            child: const Text('Olvidaste la contraseña ? Restablecela'),
                          )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}