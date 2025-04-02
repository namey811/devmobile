import 'package:flutter/material.dart';

class FormClientes extends StatefulWidget {
  const FormClientes({super.key});

  @override
  State<FormClientes> createState() => _FormClientesState();
}

class _FormClientesState extends State<FormClientes> {
  final _formkey = GlobalKey<FormState>();
  final nombre = TextEditingController();
  final apellido = TextEditingController();
  final email = TextEditingController();
  final telefono = TextEditingController();

  @override
  void dispose() {
    nombre.dispose();
    apellido.dispose();
    email.dispose();
    telefono.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Formulario Clientes")),
      body: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Nombre",
                hintText: "Ingrese su nombre",
                border: OutlineInputBorder(),
                icon: Icon(Icons.person),
              ),
              controller: nombre,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Por favor ingrese su nombre";
                }
                return null;
              },
            ),
            const SizedBox(height: 10),

            TextFormField(
              decoration: const InputDecoration(
                labelText: "Apellido",
                hintText: "Ingrese su apellido",
                border: OutlineInputBorder(),
                icon: Icon(Icons.person),
              ),
              controller: apellido,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Por favor ingrese su apellido";
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Email",
                hintText: "Ingrese su email",
                border: OutlineInputBorder(),
                icon: Icon(Icons.email),
              ),
              controller: email,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Por favor ingrese su email";
                }
                return null;
              }
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Telefono",
                hintText: "Ingrese su telefono",
                border: OutlineInputBorder(),
                icon: Icon(Icons.phone),
              ),
              controller: telefono,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Por favor ingrese su telefono";
                }
                return null;
              }
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text("Guardar :-)"),
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Procesando...')),);
                  guardarcliente();
                  _formkey.currentState!.reset();

                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Verifica los campos del formulario'),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  void guardarcliente(){
    /*
   print("Nombre: ${nombre.text}");
   print("Apellido: ${apellido.text}");
   print("Correo: ${email.text}");
   print("Telefono: ${telefono.text}");
 */
  }
}
