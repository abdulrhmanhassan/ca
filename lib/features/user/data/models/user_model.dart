import 'package:ca/core/data/api/end_points.dart';
import 'package:ca/features/user/domain/entities/user_entity.dart';

import 'sub_model/address_model.dart';
import 'sub_model/company_model.dart';

class UserModel extends UserEntity {
  final String id;
  final String userName;
  final String webSite;
  final Company company;

  UserModel({
    required this.id,
    required super.name,
    required super.email,
    required super.phone,
    required super.address,
    required this.userName,
    required this.webSite,
    required this.company,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json[ApiKey.id],
      name: json[ApiKey.name],
      email: json[ApiKey.email],
      phone: json[ApiKey.phone],
      userName: json[ApiKey.username],
      webSite: json[ApiKey.website],
      company: Company.fromJson(json[ApiKey.company]),
      address: AddressModel.fromJson(json[ApiKey.address]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKey.id: id,
      ApiKey.name: name,
      ApiKey.email: email,
      ApiKey.phone: phone,
      ApiKey.address: address,
      ApiKey.username: userName,
      ApiKey.website: webSite,
      ApiKey.company: company,
    };
  }
}
