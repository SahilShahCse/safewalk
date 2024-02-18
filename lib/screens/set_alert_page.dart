import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../components/custom_time_picker.dart';

class SetAlertPage extends StatefulWidget {
  const SetAlertPage({super.key});

  @override
  State<SetAlertPage> createState() => _SetAlertPageState();
}

class _SetAlertPageState extends State<SetAlertPage> {
  TextEditingController _note_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Personal Safety',),),
        backgroundColor: Theme.of(context).colorScheme.background,
        // actions: [
        //   InkWell(
        //     child: Container(
        //       margin: EdgeInsets.symmetric(horizontal: 15),
        //       child: Icon(
        //         Icons.notifications,
        //         size: 25,
        //         color: Theme.of(context).colorScheme.secondary,
        //       ),
        //     ),
        //   ),
        //   CircleAvatar(
        //     radius: 18,
        //   ),
        //   SizedBox(width: 15),
        // ],
      ),
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
            
                _buildTopRow(),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('Set Alert', style: Theme.of(context).textTheme.bodyLarge,),
                ),
                SizedBox(height: 10),
                _buildSetAlert(context),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('Set From Previous Alerts', style: Theme.of(context).textTheme.bodyLarge,),
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildButton(){
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.yellow.shade700,
          borderRadius: BorderRadius.circular(30),
        ),
        child:
            Row(
              children: [
                Text('Set Alert' , style: TextStyle(fontWeight: FontWeight.w500 ,fontSize: 14 , color: Colors.black87 ),),
                SizedBox(width: 5),
                Icon(Icons.notifications_active , size: 22 , color: Colors.black87),
              ],
            ),
      ),
    );
  }

  Widget _buildSetAlert(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [

                  const SizedBox(height: 5),
                  TextField(
                    maxLines: 5,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Add note\n\nThis is optional\n(you can leave this if u want)',
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(child: CustomTimePicker()),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildButton(),
                    ],
                  ),

                ],
              ),
    );
  }

  Widget _buildTopRow() {
    return Row(
            children: [
              Expanded(child: _buildTouchCards(Icons.location_on, "Share Location")),
              SizedBox(width: 15),
              Expanded(child: _buildTouchCards(Icons.call, "Call parents")),
            ],
          );
  }

  Widget _buildTouchCards(IconData iconData , String title){
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(iconData , color: Colors.red.shade400,),
          SizedBox(width: 10),
          Expanded(child: Text(title , style: Theme.of(context).textTheme.bodyMedium,),),
          Icon(CupertinoIcons.chevron_compact_right),
        ],
      ),
    );
  }


}
