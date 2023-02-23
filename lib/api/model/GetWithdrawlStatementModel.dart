import 'package:sampleapp/api/model/Getwithdrawstatus.dart';

import 'status.dart';

class GetWithdrawlStatementModel {
  GetWithdrawlStatementModel({
      this.status,});

  GetWithdrawlStatementModel.fromJson(dynamic json) {
    status = json['status'] != null ? Getwithdrawstatus.fromJson(json['status']) : null;
  }
  Getwithdrawstatus? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (status != null) {
      map['status'] = status!.toJson();
    }
    return map;
  }

}