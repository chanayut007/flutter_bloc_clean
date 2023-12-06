import 'package:flutter/cupertino.dart';

class CustomDatePicker {
  
  static Future<DateTime> showDatePicker(BuildContext context) async {
    DateTime currentDate = DateTime.now();
    
    DateTime selectedDate = currentDate;
    
    await showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 200,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.monthYear,
            initialDateTime: currentDate,
            onDateTimeChanged: (DateTime newDate) {
              selectedDate = newDate;
            }
          ),
        );
      }
    );
    
    return selectedDate;
  }
}