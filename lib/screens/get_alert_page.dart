import 'package:flutter/material.dart';

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
        scrolledUnderElevation: 0,
        title: Text('Details'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
          return buildDetails();
        },),
      ),
    );
  }

  Container buildDetails() {

    return Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(bottom: 15 , left: 15 , right: 15),
        decoration: BoxDecoration(
          // color: Color(0xffD1C1EB),
          border: Border(bottom: BorderSide()),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Note:' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500),),
            SizedBox(height: 5),
            Text('I\'ll be reaching soon , im at my school and heading straight towards home , see u ...'),
            SizedBox(height: 20),
            Text('Time:',style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500),),
            SizedBox(height: 5),

            Text('8:30 pm'),
            SizedBox(height: 20),

            Text('Sender: Ipshita',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w500),),


          ],
        ),
      );
  }
}
