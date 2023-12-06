import 'package:intl/intl.dart';

class DateFormatExtension {

  static const String dd_MMM_yyyy = "dd MMM yyyy";
  static const String dd_MMM = "dd MMM";
  static const String MMyyyy = "MMyyyy";
  static const String MMM_yyyy = "MMM yyyy";

  static String dateTimeToString({required DateTime date, String format = dd_MMM_yyyy}) {
    return DateFormat(format).format(date);
  }

  static DateTime stringToDate({required String dateStr, String format = MMM_yyyy}) {
    return DateFormat(format).parse(dateStr);
  }

}