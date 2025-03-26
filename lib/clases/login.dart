class Login {
  // Atributos
  final String _usuario = "admin"; // Dummy user
  final String _clave = "1234";    // Dummy password

  // Constructor con datos dummies
  Login();

  // Método para validar el usuario
  bool validarUsuario(String usuario, String clave) {
    return usuario == _usuario && clave == _clave;
  }
}