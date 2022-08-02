class Regions {
  String? region;
  List<String>? city;

  Regions({this.region, this.city});

  Regions.fromJson(Map<String, dynamic> json) {
    region = json['provinsi'];
    city = json['kota'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['provinsi'] = region;
    data['kota'] = city;
    return data;
  }
}
