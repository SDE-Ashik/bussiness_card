class UserModel {
  final String uid;
  final String username;
  final String email;
  final String mobile;

  UserModel({
    required this.uid,
    required this.username,
    required this.email,
    required this.mobile,
  });

  factory UserModel.fromFirestore(String uid, Map<String, dynamic> data) {
    return UserModel(
      uid: uid,
      username: data['username'] ?? '',
      email: data['email'] ?? '',
      mobile: data['mobile'] ?? '',
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'username': username,
      'email': email,
      'mobile': mobile,
    };
  }
}
