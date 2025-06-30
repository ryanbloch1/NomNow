import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:nom_now/core/database/models/profile.dart';
import 'package:nom_now/core/database/services/supabase_service.dart';
import 'package:nom_now/core/error/failure.dart';
import 'package:nom_now/domain/repositories/i_profile_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final SupabaseService _supabaseService;

  ProfileRepository(this._supabaseService);

  @override
  Future<Either<Failure, Profile?>> getProfile(String userId) async {
    try {
      final response = await _supabaseService.client
          .from('profiles')
          .select()
          .eq('id', userId)
          .single();

      return right(Profile.fromJson(response));
    } on PostgrestException catch (e) {
      return left(Failure.database(e.message, e));
    } on AuthException catch (e) {
      return left(Failure.auth(e.message, e));
    } catch (e) {
      return left(
          Failure.unknown('Unexpected error: ${e.toString()}', e as Exception));
    }
  }

  @override
  Future<Either<Failure, void>> createProfile(Profile profile) async {
    try {
      await _supabaseService.client.from('profiles').insert(profile.toJson());

      return right(null);
    } on PostgrestException catch (e) {
      if (e.code == '23505') {
        // Unique constraint violation
        return left(Failure.database('Profile already exists', e));
      }
      return left(Failure.database(e.message, e));
    } on AuthException catch (e) {
      return left(Failure.auth(e.message, e));
    } catch (e) {
      return left(
          Failure.unknown('Unexpected error: ${e.toString()}', e as Exception));
    }
  }

  @override
  Future<Either<Failure, void>> updateProfile(Profile profile) async {
    try {
      await _supabaseService.client
          .from('profiles')
          .update(profile.toJson())
          .eq('id', profile.id);

      return right(null);
    } on PostgrestException catch (e) {
      return left(Failure.database(e.message, e));
    } on AuthException catch (e) {
      return left(Failure.auth(e.message, e));
    } catch (e) {
      return left(
          Failure.unknown('Unexpected error: ${e.toString()}', e as Exception));
    }
  }

  @override
  Future<Either<Failure, List<Profile>>> getChefs() async {
    try {
      final response = await _supabaseService.client
          .from('profiles')
          .select()
          .eq('user_role', 'chef');

      final profiles = response.map((json) => Profile.fromJson(json)).toList();
      return right(profiles);
    } on PostgrestException catch (e) {
      return left(Failure.database(e.message, e));
    } on AuthException catch (e) {
      return left(Failure.auth(e.message, e));
    } catch (e) {
      return left(
          Failure.unknown('Unexpected error: ${e.toString()}', e as Exception));
    }
  }
}
