class LocalServer {
  // Simpan data pengguna (email -> password)
  static final Map<String, String> _users = {};

  // Fungsi registrasi
  static String? register(String email, String password) {
    if (_users.containsKey(email)) {
      return 'User already exists!';
    }
    _users[email] = password;
    return null; // Null berarti sukses
  }

  // Fungsi login
  static String? login(String email, String password) {
    if (!_users.containsKey(email)) {
      return 'User not found!';
    }
    if (_users[email] != password) {
      return 'Incorrect password!';
    }
    return null; // Null berarti sukses
  }
}
