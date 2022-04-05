class UserModel {
  String? uid;
  String? email;
  String? nombre;
  String? apellido;

  UserModel({this.uid, this.email, this.nombre, this.apellido});

  ///Recibir datos del servidor
  factory UserModel.fromMap(map) {
    return UserModel(
        uid: map['uid'],
        email: map['email'],
        nombre: map['nombre'],
        apellido: map['apellido']);
  }

  //Enviando datos a nuestro servidor
  Map<String, dynamic> toMap() {
    return {'uid': uid, 'email': email, 'nombre': nombre, 'apellido': apellido};
  }
}
