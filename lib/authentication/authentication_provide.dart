import 'package:riverpod_annotation/riverpod_annotation.dart';

@riverpod
class AuthenticationProvide  {
  @override
  AuthenticationState build() {
    return AuthenticationState.initial;
  }
 /* Future<void> login() async {
    state = AuthenticationState.loading;

    // Call login service

    // If success
    state = AuthenticationState.success;

    // If error
    state = AuthenticationState.error;
  }*/
}

enum AuthenticationState {
  initial,
  loading,
  success,
  error,
}