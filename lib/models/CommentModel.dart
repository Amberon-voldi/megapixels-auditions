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


/** This is an auto generated class representing the CommentModel type in your schema. */
@immutable
class CommentModel extends Model {
  static const classType = const _CommentModelModelType();
  final String id;
  final String? _msg;
  final String? _pfp;
  final int? _likes;
  final String? _username;
  final String? _email;
  final String? _oyeID;
  final String? _usersID;
  final TemporalDateTime? _time;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get msg {
    return _msg;
  }
  
  String? get pfp {
    return _pfp;
  }
  
  int? get likes {
    return _likes;
  }
  
  String? get username {
    return _username;
  }
  
  String? get email {
    return _email;
  }
  
  String? get oyeID {
    return _oyeID;
  }
  
  String get usersID {
    try {
      return _usersID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get time {
    return _time;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const CommentModel._internal({required this.id, msg, pfp, likes, username, email, oyeID, required usersID, time, createdAt, updatedAt}): _msg = msg, _pfp = pfp, _likes = likes, _username = username, _email = email, _oyeID = oyeID, _usersID = usersID, _time = time, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory CommentModel({String? id, String? msg, String? pfp, int? likes, String? username, String? email, String? oyeID, required String usersID, TemporalDateTime? time}) {
    return CommentModel._internal(
      id: id == null ? UUID.getUUID() : id,
      msg: msg,
      pfp: pfp,
      likes: likes,
      username: username,
      email: email,
      oyeID: oyeID,
      usersID: usersID,
      time: time);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentModel &&
      id == other.id &&
      _msg == other._msg &&
      _pfp == other._pfp &&
      _likes == other._likes &&
      _username == other._username &&
      _email == other._email &&
      _oyeID == other._oyeID &&
      _usersID == other._usersID &&
      _time == other._time;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CommentModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("msg=" + "$_msg" + ", ");
    buffer.write("pfp=" + "$_pfp" + ", ");
    buffer.write("likes=" + (_likes != null ? _likes!.toString() : "null") + ", ");
    buffer.write("username=" + "$_username" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("oyeID=" + "$_oyeID" + ", ");
    buffer.write("usersID=" + "$_usersID" + ", ");
    buffer.write("time=" + (_time != null ? _time!.format() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CommentModel copyWith({String? id, String? msg, String? pfp, int? likes, String? username, String? email, String? oyeID, String? usersID, TemporalDateTime? time}) {
    return CommentModel._internal(
      id: id ?? this.id,
      msg: msg ?? this.msg,
      pfp: pfp ?? this.pfp,
      likes: likes ?? this.likes,
      username: username ?? this.username,
      email: email ?? this.email,
      oyeID: oyeID ?? this.oyeID,
      usersID: usersID ?? this.usersID,
      time: time ?? this.time);
  }
  
  CommentModel.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _msg = json['msg'],
      _pfp = json['pfp'],
      _likes = (json['likes'] as num?)?.toInt(),
      _username = json['username'],
      _email = json['email'],
      _oyeID = json['oyeID'],
      _usersID = json['usersID'],
      _time = json['time'] != null ? TemporalDateTime.fromString(json['time']) : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'msg': _msg, 'pfp': _pfp, 'likes': _likes, 'username': _username, 'email': _email, 'oyeID': _oyeID, 'usersID': _usersID, 'time': _time?.format(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'msg': _msg, 'pfp': _pfp, 'likes': _likes, 'username': _username, 'email': _email, 'oyeID': _oyeID, 'usersID': _usersID, 'time': _time, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField MSG = QueryField(fieldName: "msg");
  static final QueryField PFP = QueryField(fieldName: "pfp");
  static final QueryField LIKES = QueryField(fieldName: "likes");
  static final QueryField USERNAME = QueryField(fieldName: "username");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField OYEID = QueryField(fieldName: "oyeID");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static final QueryField TIME = QueryField(fieldName: "time");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CommentModel";
    modelSchemaDefinition.pluralName = "CommentModels";
    
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
      ModelIndex(fields: const ["oyeID"], name: "byOye"),
      ModelIndex(fields: const ["usersID"], name: "byUsers")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CommentModel.MSG,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CommentModel.PFP,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CommentModel.LIKES,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CommentModel.USERNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CommentModel.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CommentModel.OYEID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CommentModel.USERSID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CommentModel.TIME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
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

class _CommentModelModelType extends ModelType<CommentModel> {
  const _CommentModelModelType();
  
  @override
  CommentModel fromJson(Map<String, dynamic> jsonData) {
    return CommentModel.fromJson(jsonData);
  }
}