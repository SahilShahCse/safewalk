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
        title: Text('Home'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Leave a note:' , style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500 , fontSize: 16),),
                    TextFormField(
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
              CustomTimePicker(),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15 , horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(child: Text('Set Timer' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 16 , color: Colors.orange),),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
