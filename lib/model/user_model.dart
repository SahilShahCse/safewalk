import 'package:safewalk/model/shared_model.dart';
import 'package:safewalk/model/timerModel.dart';

class UserModel {
  String userId;
  String userName;
  String email;
  String password;
  DateTime accountCreatedAt;
  List<String> sharedUsers;
  List<TimerModel> timers;
  List<SharedModel> shared;

  UserModel({
    required this.userId,
    required this.userName,
    required this.email,
    required this.accountCreatedAt,
    required this.password,
    required this.sharedUsers,
    required this.timers,
    required this.shared,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'userName': userName,
      'email': email,
      'password': password,
      'accountCreatedAt': accountCreatedAt.toIso8601String(),
      'sharedUsers': sharedUsers,
      'timers': timers.map((timer) => timer.toMap()).toList(),
      'shared': shared.map((sharedModel) => sharedModel.toMap()).toList(),
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
      timers: List<TimerModel>.from(
          map['timers'].map((x) => TimerModel.fromMap(x))),
      shared: List<SharedModel>.from(
          map['shared'].map((x) => SharedModel.fromMap(x))),
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
  timers: [],
  shared: [],
);
