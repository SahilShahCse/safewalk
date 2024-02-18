import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:safewalk/model/shared_model.dart';
import 'package:safewalk/model/user_model.dart';


class SharedFirebase{

  static CollectionReference collectionReference = FirebaseFirestore.instance.collection('shared');

  static Future<SharedModel> getShared() async {
    DocumentReference documentReference = collectionReference.doc(user.sharedId);
    DocumentSnapshot snapshot = await documentReference.get();

    return shared = SharedModel.fromMap(snapshot.data() as Map<String , dynamic>);
  }


}