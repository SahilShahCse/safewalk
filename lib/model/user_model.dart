class UserModel {
  String userId;
  String userName;
  String email;
  String password;
  DateTime accountCreatedAt;
  List<String> sharedUsers;

  UserModel({
    required this.userId,
    required this.userName,
    required this.email,
    required this.accountCreatedAt,
    required this.password,
    required this.sharedUsers,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'userName': userName,
      'email': email,
      'password': password,
      'accountCreatedAt': accountCreatedAt.toIso8601String(),
      'sharedUsers': sharedUsers,
      // Add other fields as needed
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userId: map['userId'],
      userName: map['userName'],
      email: map['email'],
      password: map['password'],
      accountCreatedAt: DateTime.parse(map['accountCreatedAt']),
      sharedUsers: List<String>.from(map['sharedUsers']),
    );
  }
}

UserModel user = UserModel(
  userId: '000000',
  userName: 'sahil shah',
  email: 'ssahilsagarshah@gmail.com',
  accountCreatedAt: DateTime.now(),
  password: 'sahilshah',
  sharedUsers: [],
);
