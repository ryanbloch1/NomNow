import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:nom_now/domain/enums/user_role.dart';
import 'package:nom_now/domain/services/i_credential_service.dart';

class CredentialService implements ICredentialService {
  final FlutterSecureStorage _storage;

  static const String _isLoggedInKey = 'is_logged_in';
  static const String _userIdKey = 'user_id';
  static const String _emailKey = 'email';
  static const String _usernameKey = 'username';
  static const String _userRoleKey = 'user_role';
  static const String _authTokenKey = 'auth_token';
  static const String _refreshTokenKey = 'refresh_token';
  static const String _hasSeenOnboardingKey = 'has_seen_onboarding';
  static const String _deviceIdKey = 'device_id';

  CredentialService({FlutterSecureStorage? storage})
      : _storage = storage ?? const FlutterSecureStorage();

  @override
  Future<bool> get isLoggedIn async {
    final value = await _storage.read(key: _isLoggedInKey);
    return value == 'true';
  }

  @override
  Future<void> setLoggedIn(bool value) async {
    await _storage.write(key: _isLoggedInKey, value: value.toString());
  }

  @override
  Future<String?> get userId => _storage.read(key: _userIdKey);

  @override
  Future<void> setUserId(String id) =>
      _storage.write(key: _userIdKey, value: id);

  @override
  Future<String?> get email => _storage.read(key: _emailKey);

  @override
  Future<void> setEmail(String email) =>
      _storage.write(key: _emailKey, value: email);

  @override
  Future<String?> get username => _storage.read(key: _usernameKey);

  @override
  Future<void> setUsername(String username) =>
      _storage.write(key: _usernameKey, value: username);

  @override
  Future<UserRole?> get userRole async {
    final value = await _storage.read(key: _userRoleKey);
    if (value == null) return null;
    return UserRole.values.firstWhere(
      (role) => role.toString() == value,
      orElse: () => UserRole.customer,
    );
  }

  @override
  Future<void> setUserRole(UserRole role) =>
      _storage.write(key: _userRoleKey, value: role.toString());

  @override
  Future<String?> get authToken => _storage.read(key: _authTokenKey);

  @override
  Future<void> setAuthToken(String token) =>
      _storage.write(key: _authTokenKey, value: token);

  @override
  Future<String?> get refreshToken => _storage.read(key: _refreshTokenKey);

  @override
  Future<void> setRefreshToken(String token) =>
      _storage.write(key: _refreshTokenKey, value: token);

  @override
  Future<bool> get hasSeenOnboarding async {
    final value = await _storage.read(key: _hasSeenOnboardingKey);
    return value == 'true';
  }

  @override
  Future<void> setHasSeenOnboarding(bool value) =>
      _storage.write(key: _hasSeenOnboardingKey, value: value.toString());

  @override
  Future<String?> get deviceId => _storage.read(key: _deviceIdKey);

  @override
  Future<void> setDeviceId(String id) =>
      _storage.write(key: _deviceIdKey, value: id);

  @override
  Future<void> clearCredentials() => _storage.deleteAll();

  @override
  Future<void> clearCredential(String key) => _storage.delete(key: key);

  @override
  Future<void> login({
    required String userId,
    required String email,
    required String username,
    required UserRole role,
    required String authToken,
    String? refreshToken,
  }) async {
    await Future.wait([
      setUserId(userId),
      setEmail(email),
      setUsername(username),
      setUserRole(role),
      setAuthToken(authToken),
      if (refreshToken != null) setRefreshToken(refreshToken),
      setLoggedIn(true),
    ]);
  }

  @override
  Future<void> logout() async {
    await Future.wait([
      clearCredential(_userIdKey),
      clearCredential(_emailKey),
      clearCredential(_usernameKey),
      clearCredential(_userRoleKey),
      clearCredential(_authTokenKey),
      clearCredential(_refreshTokenKey),
      setLoggedIn(false),
    ]);
  }
}
