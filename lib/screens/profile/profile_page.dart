import 'package:flutter/material.dart';
import 'package:safewalk/model/user_model.dart';
import 'package:safewalk/screens/profile/settings_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(user.userName),
            Text(user.userId),
            Expanded(
              child: ListView.builder(
                itemCount: user.sharedUsers.length,
                itemBuilder: (BuildContext context, int index) {
                return Text(user.sharedUsers[index]);
              },),
            ),
            getButton('Settings', () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>SettingsPage()));
            }),
            getButton('Subscriptions', () { }),
            getButton('SetGuardian', () { }),
          ],
        ),
      ),
    );
  }

  Widget getButton(String title , void Function()? function){
    return InkWell(
      onTap: function,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 15),
        child: Text(title),
      ),
    );
  }
}
