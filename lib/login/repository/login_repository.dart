class LoginRepository {
  Future<void> login() async {
    await Future.delayed(const Duration(seconds: 20));
    throw Exception('login failed');
  }
}
