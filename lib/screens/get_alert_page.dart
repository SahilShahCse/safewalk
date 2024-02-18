import 'package:flutter/material.dart';
import 'package:safewalk/firebase/shared_firebase.dart';

import '../model/shared_model.dart';

class GetAlertPage extends StatefulWidget {
  const GetAlertPage({super.key});

  @override
  State<GetAlertPage> createState() => _GetAlertPageState();
}

class _GetAlertPageState extends State<GetAlertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .background,
        scrolledUnderElevation: 0,
        title: Text('Details'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: _buildAlertDetails(context),
        ),
      ),
    );
  }

  FutureBuilder _buildAlertDetails(BuildContext context) {
    return FutureBuilder<SharedModel>(
      future: SharedFirebase.getShared(),
      builder: (BuildContext context, AsyncSnapshot<SharedModel> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // Loading indicator
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}'); // Error message
        } else if (!snapshot.hasData) {
          return Text('No data available'); // No data message
        } else {
          final sharedModel = snapshot.data!;
          return ListView.builder(
            itemCount: snapshot.data!.listOfTimers.length,
            itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(),
                            SizedBox(height: 5),
                            Text(
                              snapshot.data!.listOfTimers[index].senderName,
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyMedium,
                            ),
                          ],
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Text(
                            snapshot.data!.listOfTimers[index].note,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Arrival time\n${ snapshot.data!.listOfTimers[index].setTime.toUtc().toString().substring(11,16)}',
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyMedium,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            );
          },);
        }
      },
    );
  }
}
