class PhonesModel {
  String phonename;
  String brandname;
  int id;
  String image_url;

  PhonesModel(int id, String name, String image_url,String brand) {
    this.id = id;
    this.phonename = name;
    this.image_url = image_url;
    this.brandname = brand;
  }

  PhonesModel.fromJson(Map json)
      : id = json['id']??'',
        phonename = json['name']??"",
        image_url = json['image_url']??"",
        brandname = json['Brand']??"";

  Map toJson() {
    return {'id': id, 'name': phonename, 'image_url': image_url,'Brand':brandname};
  }
}