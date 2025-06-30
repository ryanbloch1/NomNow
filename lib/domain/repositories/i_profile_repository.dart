import 'package:fpdart/fpdart.dart';
import 'package:nom_now/core/database/models/profile.dart';
import 'package:nom_now/core/error/failure.dart';

abstract class IProfileRepository {
  Future<Either<Failure, Profile?>> getProfile(String userId);
  Future<Either<Failure, void>> createProfile(Profile profile);
  Future<Either<Failure, void>> updateProfile(Profile profile);
  Future<Either<Failure, List<Profile>>> getChefs();
  // Stream<Either<Failure, List<Profile>>> watchChefs();
}
