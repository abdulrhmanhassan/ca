import 'package:ca/core/parameter/parameter.dart';
import 'package:ca/features/user/domain/repository/user_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/user_entity.dart';

class GetUserUseCase {
  final UserRepository userRepository;
  GetUserUseCase({required this.userRepository});

  Future<Either<Failure, UserEntity>> call(
      {required UserParameter parameter}) async {
    return userRepository.getUser(parameter);
  }
}
