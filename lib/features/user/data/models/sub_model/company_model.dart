import '../../../../../core/data/api/end_points.dart';

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      name: json[ApiKey.name],
      catchPhrase: json[ApiKey.catchPhrase],
      bs: json[ApiKey.bs],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKey.name: name,
      ApiKey.catchPhrase: catchPhrase,
      ApiKey.bs: bs,
    };
  }
}
