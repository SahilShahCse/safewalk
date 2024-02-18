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

  Container _buildAlertDetails(BuildContext context) {
    return Container(
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
                        Text('Sahil Shah', style: Theme.of(context).textTheme.bodyMedium,),
                      ],
                    ),
                    SizedBox(width: 15),
                    Expanded(child: Text('What if i have a very long note ? will it still look good or not ?')),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Arrival time\n2:50 AM', style: Theme.of(context).textTheme.bodyMedium,),
                  SizedBox(width: 10),
                ],
              ),
            ],
          ),
        );
  }
}