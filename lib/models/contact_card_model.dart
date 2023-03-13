class ContactCardModel {
  final String? name;
  final String? image;

  const ContactCardModel({this.name, this.image});

  factory ContactCardModel.fromJson(Map<String, dynamic> json) {
    return ContactCardModel(
      name: json["name"],
      image: json["image"],
    );
  }
}
