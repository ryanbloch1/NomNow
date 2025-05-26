import 'package:nom_now/domain/models/enums/user_role.dart';

abstract class ICredentialRepository {
  /// Authentication state
  Future<bool> get isLoggedIn;
  Future<void> setLoggedIn(bool value);

  /// User data
  Future<String?> get userId;
  Future<void> setUserId(String id);

  Future<String?> get email;
  Future<void> setEmail(String email);

  Future<String?> get username;
  Future<void> setUsername(String username);

  Future<UserRole?> get userRole;
  Future<void> setUserRole(UserRole role);

  /// Tokens
  Future<String?> get authToken;
  Future<void> setAuthToken(String token);

  Future<String?> get refreshToken;
  Future<void> setRefreshToken(String token);

  /// Onboarding
  Future<bool> get hasSeenOnboarding;
  Future<void> setHasSeenOnboarding(bool value);

  /// Device
  Future<String?> get deviceId;
  Future<void> setDeviceId(String id);

  /// Clear all stored credentials
  Future<void> clearCredentials();

  /// Clear specific credential
  Future<void> clearCredential(String key);

  /// Login helper method
  Future<void> login({
    required String userId,
    required String email,
    required String username,
    required UserRole role,
    required String authToken,
    String? refreshToken,
  });

  /// Logout helper method
  Future<void> logout();
}
