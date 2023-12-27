
class Youth {
  late final String name;
  late final String image;
  late final String description;
  late final String time ;

  Youth(
      {required this.name,
      required this.image,
      required this.description,
      required this.time ,
      });

  Youth.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    image = map['image'];
    description = map['description'];
    time = map['time'] ;
  }

  Map<String, dynamic> toMap() =>
      {'name': name, 
      'image': image, 
      'description': description, 
      'time': time};
}
