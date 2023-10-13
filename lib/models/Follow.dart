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


/** This is an auto generated class representing the Follow type in your schema. */
@immutable
class Follow extends Model {
  static const classType = const _FollowModelType();
  final String id;
  final TemporalDateTime? _time;
  final String? _follwing;
  final String? _followedby;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  TemporalDateTime? get time {
    return _time;
  }
  
  String? get follwing {
    return _follwing;
  }
  
  String? get followedby {
    return _followedby;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Follow._internal({required this.id, time, follwing, followedby, createdAt, updatedAt}): _time = time, _follwing = follwing, _followedby = followedby, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Follow({String? id, TemporalDateTime? time, String? follwing, String? followedby}) {
    return Follow._internal(
      id: id == null ? UUID.getUUID() : id,
      time: time,
      follwing: follwing,
      followedby: followedby);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Follow &&
      id == other.id &&
      _time == other._time &&
      _follwing == other._follwing &&
      _followedby == other._followedby;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Follow {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("time=" + (_time != null ? _time!.format() : "null") + ", ");
    buffer.write("follwing=" + "$_follwing" + ", ");
    buffer.write("followedby=" + "$_followedby" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Follow copyWith({String? id, TemporalDateTime? time, String? follwing, String? followedby}) {
    return Follow._internal(
      id: id ?? this.id,
      time: time ?? this.time,
      follwing: follwing ?? this.follwing,
      followedby: followedby ?? this.followedby);
  }
  
  Follow.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _time = json['time'] != null ? TemporalDateTime.fromString(json['time']) : null,
      _follwing = json['follwing'],
      _followedby = json['followedby'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'time': _time?.format(), 'follwing': _follwing, 'followedby': _followedby, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'time': _time, 'follwing': _follwing, 'followedby': _followedby, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField TIME = QueryField(fieldName: "time");
  static final QueryField FOLLWING = QueryField(fieldName: "follwing");
  static final QueryField FOLLOWEDBY = QueryField(fieldName: "followedby");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Follow";
    modelSchemaDefinition.pluralName = "Follows";
    
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
      key: Follow.TIME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Follow.FOLLWING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Follow.FOLLOWEDBY,
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

class _FollowModelType extends ModelType<Follow> {
  const _FollowModelType();
  
  @override
  Follow fromJson(Map<String, dynamic> jsonData) {
    return Follow.fromJson(jsonData);
  }
}