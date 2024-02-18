import 'package:safewalk/model/timerModel.dart';

class SharedModel {
  String sharedId;
  List<TimerModel> listOfTimers;

  SharedModel({
    required this.sharedId,
    required this.listOfTimers,
  });

  Map<String, dynamic> toMap() {
    return {
      'sharedId': sharedId,
      'listOfTimers': listOfTimers.map((timer) => timer.toMap()).toList(),
    };
  }

  factory SharedModel.fromMap(Map<String, dynamic> map) {
    return SharedModel(
      sharedId: map['sharedId'],
      listOfTimers: List<TimerModel>.from(
        map['listOfTimers'].map((timerMap) => TimerModel.fromMap(timerMap)),
      ),
    );
  }
}

SharedModel shared = SharedModel(sharedId: '01', listOfTimers: [timer , timer1]);