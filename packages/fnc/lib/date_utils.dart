import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

/// Date format constants.
class DateConstants {
  static const String dateTimeFormat = "yyyy-MM-dd HH:mm:ss";
  static const String yearMonthDayFormat = "yyyy-MM-dd";
  static const String dateMonthYearFormat = "dd-MMM-yyyy";
  static const String hours12WithMeridiemFormat = "hh:mm a";
  static const String timestampFormat = "yyyy-MM-ddTHH:mm:ss.SSS";
  static const String hour24Format = 'HH:mm';
}

Future<String> getCurrentDateString(String dateFormat) async {
  await initializeDateFormatting();
  return DateFormat(dateFormat).format(DateTime.now()).toString();
}

String getUtcDate() {
  final dateUtc = DateTime.now().toUtc();
  return DateFormat(DateConstants.dateTimeFormat).format(dateUtc);
}

String getLocalTime(String dateUtc, {String? format, bool isUtc = false}) {
  final dateTime =
      DateFormat(format ?? DateConstants.dateTimeFormat).parse(dateUtc, isUtc);
  final dateLocal = dateTime.toLocal();
  return DateFormat(DateConstants.hours12WithMeridiemFormat).format(dateLocal);
}

String dateToString(DateTime date,
    {String dateFormat = DateConstants.dateMonthYearFormat}) {
  return DateFormat(dateFormat).format(date);
}

DateTime stringToDate(String dateString,
    {String dateFormat = DateConstants.dateMonthYearFormat}) {
  try {
    return DateFormat(dateFormat).parse(dateString);
  } on Exception {
    return DateTime.now();
  }
}

String dateToISOString(DateTime date) {
  return DateFormat(DateConstants.timestampFormat).format(date);
}

String getConvertedDate(String dateString,
    {String dateFormat = DateConstants.dateMonthYearFormat}) {
  try {
    final dateTime =
        DateFormat(DateConstants.dateTimeFormat).parse(dateString);
    return DateFormat(dateFormat).format(dateTime.toLocal());
  } on Exception {
    return "";
  }
}

String getConvertedTime(String dateString) {
  try {
    final dateTime =
        DateFormat(DateConstants.dateTimeFormat).parse(dateString);
    return DateFormat(DateConstants.hours12WithMeridiemFormat)
        .format(dateTime.toLocal());
  } on Exception {
    return "";
  }
}

String convertedDateFormat(String dateString,
    {String fromThis = DateConstants.dateTimeFormat,
    String toThis = DateConstants.dateMonthYearFormat}) {
  try {
    final dateTime = DateFormat(fromThis).parse(dateString);
    return DateFormat(toThis).format(dateTime.toLocal());
  } on Exception {
    return '';
  }
}

String parseDate(String dateUtc) {
  try {
    final date = DateFormat(DateConstants.dateTimeFormat).parse(dateUtc, true);
    final dateLocal = date.toLocal();
    final formattedDate =
        DateFormat(DateConstants.yearMonthDayFormat).format(dateLocal);
    final currentDate =
        DateFormat(DateConstants.yearMonthDayFormat).format(DateTime.now());
    if (formattedDate == currentDate) {
      return DateFormat(DateConstants.hours12WithMeridiemFormat)
          .format(dateLocal)
          .replaceAll(' ', '')
          .toLowerCase();
    }
    return DateFormat(DateConstants.dateMonthYearFormat).format(dateLocal);
  } on Exception {
    return '';
  }
}

List<DateTime> getDaysInBetween(DateTime startDate, DateTime endDate) {
  final days = <DateTime>[];
  for (var i = 0; i <= endDate.difference(startDate).inDays; i++) {
    days.add(startDate.add(Duration(days: i)));
  }
  return days;
}

String twoTimeDifference(String startTime, String endTime,
    {String? startTimeFormat = DateConstants.hours12WithMeridiemFormat,
    String? endTimeFormat = DateConstants.hours12WithMeridiemFormat,
    String? outputFormat = DateConstants.hour24Format}) {
  final sTime = stringToDate(
    startTime,
    dateFormat: startTimeFormat ?? DateConstants.hours12WithMeridiemFormat,
  );
  final eTime = stringToDate(
    endTime,
    dateFormat: endTimeFormat ?? DateConstants.hours12WithMeridiemFormat,
  );
  final difference = eTime.difference(sTime);
  return DateFormat(outputFormat ?? DateConstants.hour24Format)
      .format(DateTime(0, 0, 0, 0, difference.inMinutes));
}
