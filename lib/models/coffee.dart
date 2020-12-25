
import 'package:json_annotation/json_annotation.dart';

part 'coffee.g.dart';

@JsonSerializable()
class Coffee {

  String id;
  String name;
  double price;
  String imageUrl;
  String shortDescription;

  Coffee({this.id, this.name, this.price, this.imageUrl, this.shortDescription});

  factory Coffee.fromJson(Map<String, dynamic> json,String documnetId) => _$CoffeeFromJson(json,documnetId);

  Map<String, dynamic> toJson() => _$CoffeeToJson(this);
}