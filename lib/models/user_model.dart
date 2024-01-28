class User {
  final String name;
  final String imageURL;
  bool isActive;

  User({required this.name, required this.imageURL, this.isActive = false});
}
