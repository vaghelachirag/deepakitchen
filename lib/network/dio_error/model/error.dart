class ErrorModel {
  ErrorModel({int? code, String? message, bool? success}) {
    _code = code;
    _message = message;
    _success = success;
  }

  ErrorModel.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'];
    _success = json['success'];
  }

  int? _code;
  String? _message;
  bool? _success;

  int? get code => _code;

  String? get message => _message;

  bool? get success => _success;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['message'] = _message;
    map['success'] = _success;
    return map;
  }
}
