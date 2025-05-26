import 'package:nom_now/domain/models/enums/user_role.dart';

abstract class IOnboardingService {
  Future<void> saveUserRole(UserRole role);
  Future<void> clearOnboardingData();
}
