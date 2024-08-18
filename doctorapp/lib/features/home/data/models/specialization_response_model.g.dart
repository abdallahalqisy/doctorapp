// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationResponseModel _$SpecializationResponseModelFromJson(
        Map<String, dynamic> json) =>
    SpecializationResponseModel(
      specializationsDataList: (json['data'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SpecializationsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationResponseModelToJson(
        SpecializationResponseModel instance) =>
    <String, dynamic>{
      'data': instance.specializationsDataList,
    };

SpecializationsData _$SpecializationsDataFromJson(Map<String, dynamic> json) =>
    SpecializationsData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      doctorsList: (json['doctors'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Doctors.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationsDataToJson(
        SpecializationsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctorsList,
    };

Doctors _$DoctorsFromJson(Map<String, dynamic> json) => Doctors(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      degree: json['degree'] as String?,
      price: (json['appoint_price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DoctorsToJson(Doctors instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'gender': instance.gender,
      'degree': instance.degree,
      'appoint_price': instance.price,
    };