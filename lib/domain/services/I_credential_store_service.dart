
import 'package:nom_now/domain/models/enums/user_role.dart';

abstract class ICredentialStoreService {
  Future<void> saveUserRole(UserRole role);
  Future<UserRole?> getUserRole();
}