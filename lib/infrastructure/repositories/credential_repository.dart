import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:nom_now/domain/models/enums/user_role.dart';

enum StorageKeys {
  userRole('userRole');

  final String name;
  const StorageKeys(this.name);
}

class CredentialStore {
  CredentialStore(this._storage);

  Future<String?> get userRole => _storage.read(key: StorageKeys.userRole.name);

  Future<void> setUserRole(UserRole role) async {
    await _storage.write(key: StorageKeys.userRole.name, value: role.name);
  }

  final FlutterSecureStorage _storage;
}
