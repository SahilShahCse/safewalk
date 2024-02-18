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
        title: Text('Personal Safety',),
        backgroundColor: Theme.of(context).colorScheme.background,
        actions: [
          InkWell(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.notifications,
                size: 25,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          CircleAvatar(
            radius: 18,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopRow(),
              SizedBox(height: 15),
              _buildSetAlert(context),
              SizedBox(height: 25),
              Text('Set From Previous Alerts', style: Theme.of(context).textTheme.bodyLarge,),

            ],
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
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child:
            Row(
              children: [
                Text('Set Timer' , style: TextStyle(fontWeight: FontWeight.w500 ,fontSize: 16 , color: Colors.black ),),
                SizedBox(width: 5),
                Icon(Icons.notifications_active , color: Colors.black,),
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
                  Text('Set Alert', style: Theme.of(context).textTheme.bodyLarge,),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: TextField(
                          style: Theme.of(context).textTheme.bodyMedium,
                          decoration: InputDecoration(
                            hintText: 'Note...',
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      CustomTimePicker(),
                    ],
                  ),
                  const SizedBox(height: 15),
      
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
          Icon(iconData , color: Colors.white70,),
          SizedBox(width: 10),
          Expanded(child: Text(title , style: Theme.of(context).textTheme.bodyMedium,),),
          Icon(CupertinoIcons.chevron_compact_right),
        ],
      ),
    );
  }


}
