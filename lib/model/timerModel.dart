class TimerModel {
  String timerId;
  String note;
  String senderId;
  String senderName;
  DateTime setTime;
  DateTime currentTime;

  TimerModel({
    required this.timerId,
    required this.note,
    required this.senderId,
    required this.senderName,
    required this.setTime,
    required this.currentTime,
  });

  // Convert TimerModel object to a map
  Map<String, dynamic> toMap() {
    return {
      'timerId': timerId,
      'note': note,
      'senderId': senderId,
      'senderName': senderName,
      'setTime': setTime.toIso8601String(),
      'currentTime': currentTime.toIso8601String(),
    };
  }

  // Factory constructor to create TimerModel object from a map
  factory TimerModel.fromMap(Map<String, dynamic> map) {
    return TimerModel(
      timerId: map['timerId'],
      note: map['note'],
      senderId: map['senderId'],
      senderName: map['senderName'],
      setTime: DateTime.parse(map['setTime']),
      currentTime: DateTime.parse(map['currentTime']),
    );
  }
}

TimerModel timer = TimerModel(
  timerId: '1',
  note: 'hey ill be back',
  senderId: '000000',
  senderName: 'sahil shah',
  setTime: DateTime.now(),
  currentTime: DateTime.now(),

);

TimerModel timer1 = TimerModel(
  timerId: '2',
  note: 'hey ill be back okay wait for me',
  senderId: '000000',
  senderName: 'sahil shah',
  setTime: DateTime.now(),
  currentTime: DateTime.now(),
);
