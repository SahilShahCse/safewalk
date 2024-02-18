import 'package:flutter/material.dart';

class CustomTimePicker extends StatefulWidget {
  final ValueChanged<TimeOfDay>? onChanged;

  const CustomTimePicker({Key? key, this.onChanged}) : super(key: key);

  @override
  _CustomTimePickerState createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  late TimeOfDay _selectedTime;

  @override
  void initState() {
    super.initState();
    // Initialize with current time
    _selectedTime = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showTimePicker();
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.access_time,
              color: Colors.black,
            ),
            SizedBox(width: 8),
            Text(
              _formatTime(_selectedTime),
              style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500 , color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showTimePicker() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (pickedTime != null) {
      setState(() {
        _selectedTime = pickedTime;
        widget.onChanged?.call(pickedTime);
      });
    }
  }

  String _formatTime(TimeOfDay time) {
    String period = time.period == DayPeriod.am ? 'AM' : 'PM';
    int hour = time.hourOfPeriod == 0 ? 12 : time.hourOfPeriod;
    return '$hour:${time.minute.toString().padLeft(2, '0')} $period';
  }
}
