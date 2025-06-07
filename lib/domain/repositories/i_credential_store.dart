import 'package:nom_now/domain/models/enums/user_role.dart';

abstract class ICredentialStore {
  Future<UserRole?> get userRole;
  Future<void> setUserRole(UserRole role);
}
