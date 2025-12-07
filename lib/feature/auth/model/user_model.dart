class UserModel {
  final String id;
  final String name;
  final String email;
  const UserModel({required this.id, required this.name, required this.email});

  UserModel copyWith({String? id, String? name, String? email}) {
    return UserModel(id: id ?? '', name: name ?? '', email: email ?? '');
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id']?.toString() ?? '',
      name: map['firstName'] ?? '',
      email: map['email'] ?? '',
    );
  }

  @override
  String toString() => 'UserModel(id: $id, email: $email, name: $name)';
}
