import 'Status.dart';

class GetDepositStatementModel {
  GetDepositStatementModel({
      this.status,});

  GetDepositStatementModel.fromJson(dynamic json) {
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
  }
  Status? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (status != null) {
      map['status'] = status!.toJson();
    }
    return map;
  }

}