class ErrorModel {
  final int status;
  final String errorMessage;

  ErrorModel({
    required this.status,
    required this.errorMessage,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
        errorMessage: json['message'],
        status: json['status'],
      );
}
