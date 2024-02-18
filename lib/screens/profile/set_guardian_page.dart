import 'package:flutter/material.dart';
import 'package:safewalk/model/user_model.dart';

class SetGuardianPage extends StatefulWidget {
  const SetGuardianPage({super.key});

  @override
  State<SetGuardianPage> createState() => _SetGuardianPageState();
}

class _SetGuardianPageState extends State<SetGuardianPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('set guardian'),
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Text('Add Guardian'),
          SizedBox(height: 50),
          Text('Shared Users'),
          Expanded(
            child: ListView.builder(
              itemCount: user.sharedUsers.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(user.sharedUsers[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
