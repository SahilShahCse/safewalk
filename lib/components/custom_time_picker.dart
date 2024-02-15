import 'package:flutter/material.dart';

class CustomTimePicker extends StatefulWidget {
  const CustomTimePicker({super.key});

  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Color(0xffEEE8F4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Enter Time'),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [myTextField(), SizedBox(height: 5), Text('Hour')],
                ),
              ),
              const SizedBox(width: 10),
              const Column(
                children: [
                  Text(
                    ':',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                  ),
                  SizedBox(height: 5),
                  Text(''),
                ],
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [myTextField(), SizedBox(height: 5),Text('Minute')],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding:  EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Cancel' , style: TextStyle(color: Color(0xff6750A4), fontSize: 14 , fontWeight: FontWeight.w500),),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text('OK' , style: TextStyle(color: Color(0xff6750A4), fontSize: 14 , fontWeight: FontWeight.w500),),
              ),
            ],
          ),
        ],
      ),
    );
  }

  myTextField() {
    return TextField(
      style: TextStyle(fontSize: 22),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffE7E0EC),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide:
                BorderSide(color: Color(0xffD1C1EB)) // Set the outline color
            ),
      ),
    );
  }
}
