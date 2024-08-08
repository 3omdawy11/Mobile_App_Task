import 'Address.dart';

/// id : 1
/// name : "Leanne Graham"
/// username : "Bret"
/// email : "Sincere@april.biz"
/// address : {"street":"Kulas Light","suite":"Apt. 556","city":"Gwenborough","zipcode":"92998-3874","geo":{"lat":"-37.3159","lng":"81.1496"}}
/// phone : "1-770-736-8031 x56442"
/// website : "hildegard.org"
/// company : {"name":"Romaguera-Crona","catchPhrase":"Multi-layered client-server neural-net","bs":"harness real-time e-markets"}

class UserModel {
  UserModel({
      num? id, 
      String? name, 
      String? username, 
      String? email, 
      Address? address,
      }){
    _id = id;
    _name = name;
    _username = username;
    _email = email;
    _address = address;
}

  UserModel.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _username = json['username'];
    _email = json['email'];
    _address = json['address'] != null ? Address.fromJson(json['address']) : null;
  }
  num? _id;
  String? _name;
  String? _username;
  String? _email;
  Address? _address;

  num? get id => _id;
  String? get name => _name;
  String? get username => _username;
  String? get email => _email;
  Address? get address => _address;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['username'] = _username;
    map['email'] = _email;
    if (_address != null) {
      map['address'] = _address?.toJson();
    }
    return map;
  }

}