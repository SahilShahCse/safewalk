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


}