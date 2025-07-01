// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:nom_now/domain/repositories/i_profile_repository.dart' as _i498;
import 'package:nom_now/domain/services/I_credential_store_service.dart'
    as _i268;
import 'package:nom_now/infrastructure/di/injection_module.dart' as _i632;
import 'package:nom_now/infrastructure/repositories/credential_store.dart'
    as _i1016;
import 'package:nom_now/infrastructure/repositories/profile_repository.dart'
    as _i175;
import 'package:nom_now/infrastructure/services/credential_store_service.dart'
    as _i965;
import 'package:nom_now/infrastructure/services/supabase_service.dart' as _i832;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectionModule = _$InjectionModule();
    gh.singleton<_i558.FlutterSecureStorage>(
        () => injectionModule.secureStorage);
    gh.lazySingleton<_i832.SupabaseService>(() => _i832.SupabaseService());
    gh.lazySingleton<_i1016.CredentialStore>(
        () => _i1016.CredentialStore(gh<_i558.FlutterSecureStorage>()));
    gh.lazySingleton<_i498.IProfileRepository>(
        () => _i175.ProfileRepository(gh<_i832.SupabaseService>()));
    gh.lazySingleton<_i268.ICredentialStoreService>(
        () => _i965.CredentialStoreService(gh<_i1016.CredentialStore>()));
    return this;
  }
}

class _$InjectionModule extends _i632.InjectionModule {}
