class PhonesModel {
  String name;
  String brand;
  int id;
  String image_url;

  PhonesModel(int id, String name, String image_url,String brand) {
    this.id = id;
    this.name = name;
    this.image_url = image_url;
    this.brand = brand;
  }

  PhonesModel.fromJson(Map json)
      : id = json['id']??'',
        name = json['name']??"",
        image_url = json['image_url']??"",
        brand = json['brand']??"";

  Map toJson() {
    return {'id': id, 'name': name, 'image_url': image_url,'brand':brand};
  }
}