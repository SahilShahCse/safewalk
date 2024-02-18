import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:safewalk/firebase/send_data.dart';
import 'package:safewalk/firebase/shared_firebase.dart';
import 'package:safewalk/model/shared_model.dart';
import 'package:safewalk/model/timerModel.dart';
import 'package:safewalk/model/user_model.dart';
import 'package:safewalk/screens/home_page.dart';
import 'package:safewalk/theme.dart';
import 'firebase_options.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SharedFirebase.getShared();

  runApp(
    MaterialApp(
      theme: darkTheme,
      home: HomePage(),
    ),
  );
}
