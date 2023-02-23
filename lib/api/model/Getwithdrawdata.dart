class Getwithdrawdata {
  Getwithdrawdata({
      this.date, 
      this.amount, 
      this.status,});

  Getwithdrawdata.fromJson(dynamic json) {
    date = json['Date'];
    amount = json['Amount'];
    status = json['Status'];
  }
  String? date;
  String? amount;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Date'] = date;
    map['Amount'] = amount;
    map['Status'] = status;
    return map;
  }

}