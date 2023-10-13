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


/** This is an auto generated class representing the LikesModel type in your schema. */
@immutable
class LikesModel extends Model {
  static const classType = const _LikesModelModelType();
  final String id;
  final String? _email;
  final String? _username;
  final String? _oyeID;
  final String? _Poster;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get email {
    return _email;
  }
  
  String? get username {
    return _username;
  }
  
  String? get oyeID {
    return _oyeID;
  }
  
  String? get Poster {
    return _Poster;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const LikesModel._internal({required this.id, email, username, oyeID, Poster, createdAt, updatedAt}): _email = email, _username = username, _oyeID = oyeID, _Poster = Poster, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory LikesModel({String? id, String? email, String? username, String? oyeID, String? Poster}) {
    return LikesModel._internal(
      id: id == null ? UUID.getUUID() : id,
      email: email,
      username: username,
      oyeID: oyeID,
      Poster: Poster);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LikesModel &&
      id == other.id &&
      _email == other._email &&
      _username == other._username &&
      _oyeID == other._oyeID &&
      _Poster == other._Poster;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("LikesModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("username=" + "$_username" + ", ");
    buffer.write("oyeID=" + "$_oyeID" + ", ");
    buffer.write("Poster=" + "$_Poster" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  LikesModel copyWith({String? id, String? email, String? username, String? oyeID, String? Poster}) {
    return LikesModel._internal(
      id: id ?? this.id,
      email: email ?? this.email,
      username: username ?? this.username,
      oyeID: oyeID ?? this.oyeID,
      Poster: Poster ?? this.Poster);
  }
  
  LikesModel.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _email = json['email'],
      _username = json['username'],
      _oyeID = json['oyeID'],
      _Poster = json['Poster'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'email': _email, 'username': _username, 'oyeID': _oyeID, 'Poster': _Poster, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'email': _email, 'username': _username, 'oyeID': _oyeID, 'Poster': _Poster, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField USERNAME = QueryField(fieldName: "username");
  static final QueryField OYEID = QueryField(fieldName: "oyeID");
  static final QueryField POSTER = QueryField(fieldName: "Poster");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "LikesModel";
    modelSchemaDefinition.pluralName = "LikesModels";
    
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
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["oyeID"], name: "byOye")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: LikesModel.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: LikesModel.USERNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: LikesModel.OYEID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: LikesModel.POSTER,
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

class _LikesModelModelType extends ModelType<LikesModel> {
  const _LikesModelModelType();
  
  @override
  LikesModel fromJson(Map<String, dynamic> jsonData) {
    return LikesModel.fromJson(jsonData);
  }
}