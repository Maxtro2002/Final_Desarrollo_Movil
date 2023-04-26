class User {
  final String name, email, password, phone, address;

  User({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.address,
  });
}

List<User> tempUsers = [
  User(
      name: "Santiago",
      email: "jspr200231@gmail.com",
      password: "123456789",
      phone: "300 1233123",
      address: "Calle 1 # 1-1"),
];