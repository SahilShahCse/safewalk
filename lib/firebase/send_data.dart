import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:safewalk/model/timerModel.dart';
import 'package:safewalk/model/user_model.dart';

import '../model/shared_model.dart';

class SendData{

  void sendSharedData(SharedModel sharedModel){
      CollectionReference collectionReference = FirebaseFirestore.instance.collection('shared');
      collectionReference.doc(sharedModel.sharedId).set(sharedModel.toMap());
  }

  void setUser(UserModel userModel){
    CollectionReference collectionReference = FirebaseFirestore.instance.collection('user');
    collectionReference.doc(userModel.userId).set(userModel.toMap());
  }

  void setTimer(TimerModel timer) async {

    CollectionReference collectionReference = FirebaseFirestore.instance.collection('user'); // Update 'users' to match your collection name
    String id = user.userId;
    DocumentReference doc = collectionReference.doc(id);

    DocumentSnapshot snapshot = await doc.get();
    Map<String, dynamic> userData = snapshot.data() as Map<String, dynamic>;

    List<dynamic> timersData = userData['timers'] ?? [];
    timersData.add(timer.toMap());

    userData['timers'] = timersData;
    await doc.update(userData);
  }


}