import 'package:intl/intl.dart';

class NumberFormatExtension {
  
  static String formatNumber(double number) {
    final formatter = NumberFormat("#,##0");
    
    String formattedString = formatter.format(number);
    
    if (formattedString.endsWith('.00')) {
      formattedString = formattedString.substring(0, formattedString.length - 3);
    }

    return formattedString;
  }
}