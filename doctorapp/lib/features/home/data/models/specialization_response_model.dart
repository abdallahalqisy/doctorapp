import 'package:json_annotation/json_annotation.dart';

part 'specialization_response_model.g.dart';

@JsonSerializable()
class SpecializationResponseModel {
  @JsonKey(name: 'data')
  List<SpecializationsData?>? specializationsDataList;
  SpecializationResponseModel({
    this.specializationsDataList,
  });
  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationsData {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctors?>? doctorsList;
  SpecializationsData({
    this.id,
    this.name,
    this.doctorsList,
  });
  factory SpecializationsData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsDataFromJson(json);
}

@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? photo;
  String? address;
  String? phone;
  String? email;
  String? gender;
  String? degree;
  @JsonKey(name: 'appoint_price')
  int? price;
  Doctors({
    this.id,
    this.name,
    this.photo,
    this.address,
    this.phone,
    this.email,
    this.gender,
    this.degree,
    this.price,
  });
  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}
