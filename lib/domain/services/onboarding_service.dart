import 'package:nom_now/models/enums/user_role.dart';

class OnboardingService {
  static Future<void> saveUserRole(UserRole role) async {
    // TODO: Implement actual storage logic
    // For now, we'll just simulate a delay
    await Future.delayed(const Duration(milliseconds: 500));
  }

  static Future<void> clearOnboardingData() async {
    // TODO: Implement actual storage logic
    // For now, we'll just simulate a delay
    await Future.delayed(const Duration(milliseconds: 500));
  }
}
