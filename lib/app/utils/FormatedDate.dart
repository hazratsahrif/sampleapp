import 'package:intl/intl.dart';

class FormatDated{
   String format(String date) {
    final f = new DateFormat('yy-MM-dd');
    var formatedDate = f.format(DateTime.parse(date));
    return formatedDate;
  }
}