class BusinessCardModel {
  final String name;
  final String title;
  final String companyName;
  final String slogan;
  final String email;
  final String phoneNumber;
  final String website;

  BusinessCardModel({
    required this.name,
    required this.title,
    required this.companyName,
    required this.slogan,
    required this.email,
    required this.phoneNumber,
    required this.website,
  });

  Map<String, dynamic> toFirestore() {
    return {
      'name': name,
      'title': title,
      'companyName': companyName,
      'slogan': slogan,
      'email': email,
      'phoneNumber': phoneNumber,
      'website': website,
    };
  }
}
