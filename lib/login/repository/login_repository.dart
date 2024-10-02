class LoginRepository {
  Future<void> login() async {
    await Future.delayed(const Duration(seconds: 10));
    throw Exception('login failed');
  }
}
