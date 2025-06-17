import 'package:injectable/injectable.dart';
import 'package:nom_now/domain/models/enums/user_role.dart';
import 'package:nom_now/domain/repositories/i_credential_store.dart';
import 'package:nom_now/domain/services/I_credential_store_service.dart';

@LazySingleton(as: ICredentialStoreService)
class CredentialStoreService implements ICredentialStoreService {
  CredentialStoreService(this._credentialStore);

  final ICredentialStore _credentialStore;

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
