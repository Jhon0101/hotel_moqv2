class User {
  final String token;
  final String id;
  final String name;
  final String email;
  final dynamic emailVerifiedAt;
  final int isAdmin;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String dni;

  User({
    required this.token,
    required this.id,
    required this.name,
    required this.email,
    required this.emailVerifiedAt,
    required this.isAdmin,
    required this.createdAt,
    required this.updatedAt,
    required this.dni,
  });
}
