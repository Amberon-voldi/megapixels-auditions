/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Audition type in your schema. */
@immutable
class Audition extends Model {
  static const classType = const _AuditionModelType();
  final String id;
  final String? _applicationID;
  final String? _time;
  final String? _status;
  final String? _address;
  final String? _name;
  final String? _email;
  final String? _dob;
  final String? _idcard;
  final String? _video;
  final String? _phone;
  final String? _pfp;
  final String? _fatherspouse;
  final String? _gender;
  final String? _usersID;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get applicationID {
    return _applicationID;
  }
  
  String? get time {
    return _time;
  }
  
  String? get status {
    return _status;
  }
  
  String? get address {
    return _address;
  }
  
  String? get name {
    return _name;
  }
  
  String? get email {
    return _email;
  }
  
  String? get dob {
    return _dob;
  }
  
  String? get idcard {
    return _idcard;
  }
  
  String? get video {
    return _video;
  }
  
  String? get phone {
    return _phone;
  }
  
  String? get pfp {
    return _pfp;
  }
  
  String? get fatherspouse {
    return _fatherspouse;
  }
  
  String? get gender {
    return _gender;
  }
  
  String? get usersID {
    return _usersID;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Audition._internal({required this.id, applicationID, time, status, address, name, email, dob, idcard, video, phone, pfp, fatherspouse, gender, usersID, createdAt, updatedAt}): _applicationID = applicationID, _time = time, _status = status, _address = address, _name = name, _email = email, _dob = dob, _idcard = idcard, _video = video, _phone = phone, _pfp = pfp, _fatherspouse = fatherspouse, _gender = gender, _usersID = usersID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Audition({String? id, String? applicationID, String? time, String? status, String? address, String? name, String? email, String? dob, String? idcard, String? video, String? phone, String? pfp, String? fatherspouse, String? gender, String? usersID}) {
    return Audition._internal(
      id: id == null ? UUID.getUUID() : id,
      applicationID: applicationID,
      time: time,
      status: status,
      address: address,
      name: name,
      email: email,
      dob: dob,
      idcard: idcard,
      video: video,
      phone: phone,
      pfp: pfp,
      fatherspouse: fatherspouse,
      gender: gender,
      usersID: usersID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Audition &&
      id == other.id &&
      _applicationID == other._applicationID &&
      _time == other._time &&
      _status == other._status &&
      _address == other._address &&
      _name == other._name &&
      _email == other._email &&
      _dob == other._dob &&
      _idcard == other._idcard &&
      _video == other._video &&
      _phone == other._phone &&
      _pfp == other._pfp &&
      _fatherspouse == other._fatherspouse &&
      _gender == other._gender &&
      _usersID == other._usersID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Audition {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("applicationID=" + "$_applicationID" + ", ");
    buffer.write("time=" + "$_time" + ", ");
    buffer.write("status=" + "$_status" + ", ");
    buffer.write("address=" + "$_address" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("dob=" + "$_dob" + ", ");
    buffer.write("idcard=" + "$_idcard" + ", ");
    buffer.write("video=" + "$_video" + ", ");
    buffer.write("phone=" + "$_phone" + ", ");
    buffer.write("pfp=" + "$_pfp" + ", ");
    buffer.write("fatherspouse=" + "$_fatherspouse" + ", ");
    buffer.write("gender=" + "$_gender" + ", ");
    buffer.write("usersID=" + "$_usersID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Audition copyWith({String? id, String? applicationID, String? time, String? status, String? address, String? name, String? email, String? dob, String? idcard, String? video, String? phone, String? pfp, String? fatherspouse, String? gender, String? usersID}) {
    return Audition._internal(
      id: id ?? this.id,
      applicationID: applicationID ?? this.applicationID,
      time: time ?? this.time,
      status: status ?? this.status,
      address: address ?? this.address,
      name: name ?? this.name,
      email: email ?? this.email,
      dob: dob ?? this.dob,
      idcard: idcard ?? this.idcard,
      video: video ?? this.video,
      phone: phone ?? this.phone,
      pfp: pfp ?? this.pfp,
      fatherspouse: fatherspouse ?? this.fatherspouse,
      gender: gender ?? this.gender,
      usersID: usersID ?? this.usersID);
  }
  
  Audition.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _applicationID = json['applicationID'],
      _time = json['time'],
      _status = json['status'],
      _address = json['address'],
      _name = json['name'],
      _email = json['email'],
      _dob = json['dob'],
      _idcard = json['idcard'],
      _video = json['video'],
      _phone = json['phone'],
      _pfp = json['pfp'],
      _fatherspouse = json['fatherspouse'],
      _gender = json['gender'],
      _usersID = json['usersID'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'applicationID': _applicationID, 'time': _time, 'status': _status, 'address': _address, 'name': _name, 'email': _email, 'dob': _dob, 'idcard': _idcard, 'video': _video, 'phone': _phone, 'pfp': _pfp, 'fatherspouse': _fatherspouse, 'gender': _gender, 'usersID': _usersID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'applicationID': _applicationID, 'time': _time, 'status': _status, 'address': _address, 'name': _name, 'email': _email, 'dob': _dob, 'idcard': _idcard, 'video': _video, 'phone': _phone, 'pfp': _pfp, 'fatherspouse': _fatherspouse, 'gender': _gender, 'usersID': _usersID, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField APPLICATIONID = QueryField(fieldName: "applicationID");
  static final QueryField TIME = QueryField(fieldName: "time");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static final QueryField ADDRESS = QueryField(fieldName: "address");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField DOB = QueryField(fieldName: "dob");
  static final QueryField IDCARD = QueryField(fieldName: "idcard");
  static final QueryField VIDEO = QueryField(fieldName: "video");
  static final QueryField PHONE = QueryField(fieldName: "phone");
  static final QueryField PFP = QueryField(fieldName: "pfp");
  static final QueryField FATHERSPOUSE = QueryField(fieldName: "fatherspouse");
  static final QueryField GENDER = QueryField(fieldName: "gender");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Audition";
    modelSchemaDefinition.pluralName = "Auditions";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Audition.APPLICATIONID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Audition.TIME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Audition.STATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Audition.ADDRESS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Audition.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Audition.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Audition.DOB,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Audition.IDCARD,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Audition.VIDEO,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Audition.PHONE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Audition.PFP,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Audition.FATHERSPOUSE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Audition.GENDER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Audition.USERSID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _AuditionModelType extends ModelType<Audition> {
  const _AuditionModelType();
  
  @override
  Audition fromJson(Map<String, dynamic> jsonData) {
    return Audition.fromJson(jsonData);
  }
}