class DespositData {
  DespositData({
      this.date, 
      this.tnsID, 
      this.tnsType, 
      this.amount, 
      this.status,});

  DespositData.fromJson(dynamic json) {
    date = json['Date'];
    tnsID = json['Tns ID'];
    tnsType = json['Tns Type'];
    amount = json['Amount'];
    status = json['Status'];
  }
  String? date;
  String? tnsID;
  String? tnsType;
  String? amount;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Date'] = date;
    map['Tns ID'] = tnsID;
    map['Tns Type'] = tnsType;
    map['Amount'] = amount;
    map['Status'] = status;
    return map;
  }

}