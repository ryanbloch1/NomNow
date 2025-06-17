import 'package:injectable/injectable.dart';
import 'package:nom_now/domain/models/enums/user_role.dart';
import 'package:nom_now/domain/services/I_credential_store_service.dart';
import 'package:nom_now/infrastructure/repositories/credential_store.dart';

@LazySingleton(as: ICredentialStoreService)
class CredentialStoreService implements ICredentialStoreService {
  CredentialStoreService(this._credentialStore);

  final CredentialStore _credentialStore;

  @override
  Future<void> saveUserRole(UserRole role) async {
    await _credentialStore.setUserRole(role);
  }

  @override
  Future<UserRole?> getUserRole() {
    // TODO: implement getUserRole
    throw UnimplementedError();
  }
}
