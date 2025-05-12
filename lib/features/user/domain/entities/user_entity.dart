import 'sub_entities/sub_adress.dart';

class UserEntity {
  final String id;
  final String name;
  final String email;
  final String phone;
  final AddressEntity address;

  UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
  });
}
