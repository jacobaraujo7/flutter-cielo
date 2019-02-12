class CieloError {
  int code;
  String message;

  CieloError({
    this.code,
    this.message,
  });

  factory CieloError.fromJson(Map<String, dynamic> json) {
    return CieloError(
        code: json['Code'] as int, message: json['Message'] as String);
  }

  Map<String, dynamic> toJson(CieloError instance) => <String, dynamic>{
        'Code': instance.code,
        'Message': instance.message,
      };
}
