class LoginResponse {
  LoginResponse({
      this.status,});

  LoginResponse.fromJson(dynamic json) {
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
  }
  Status? status;
LoginResponse copyWith({  Status? status,
}) => LoginResponse(  status: status ?? this.status,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (status != null) {
      map['status'] = status?.toJson();
    }
    return map;
  }

}

class Status {
  Status({
      this.code, 
      this.message, 
      this.data,});

  Status.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? code;
  String? message;
  Data? data;
Status copyWith({  int? code,
  String? message,
  Data? data,
}) => Status(  code: code ?? this.code,
  message: message ?? this.message,
  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

class Data {
  Data({
      this.id, 
      this.role,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    role = json['role'];
  }
  String? id;
  String? role;
Data copyWith({  String? id,
  String? role,
}) => Data(  id: id ?? this.id,
  role: role ?? this.role,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['role'] = role;
    return map;
  }

}