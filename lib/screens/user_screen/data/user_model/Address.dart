

/// street : "Kulas Light"
/// suite : "Apt. 556"
/// city : "Gwenborough"
/// zipcode : "92998-3874"
/// geo : {"lat":"-37.3159","lng":"81.1496"}

class Address {
  Address({
      String? street,
      String? city, 

  }){
    _street = street;
    _city = city;
}

  Address.fromJson(dynamic json) {
    _street = json['street'];
    _city = json['city'];
  }
  String? _street;
  String? _city;


  String? get street => _street;
  String? get city => _city;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['street'] = _street;
    map['city'] = _city;

    return map;
  }

}