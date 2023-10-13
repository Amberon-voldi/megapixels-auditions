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


/** This is an auto generated class representing the OwnedContent type in your schema. */
@immutable
class OwnedContent extends Model {
  static const classType = const _OwnedContentModelType();
  final String id;
  final TemporalDateTime? _time;
  final String? _contentID;
  final String? _cost;
  final String? _usersID;
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
  
  String? get contentID {
    return _contentID;
  }
  
  String? get cost {
    return _cost;
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
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const OwnedContent._internal({required this.id, time, contentID, cost, required usersID, createdAt, updatedAt}): _time = time, _contentID = contentID, _cost = cost, _usersID = usersID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory OwnedContent({String? id, TemporalDateTime? time, String? contentID, String? cost, required String usersID}) {
    return OwnedContent._internal(
      id: id == null ? UUID.getUUID() : id,
      time: time,
      contentID: contentID,
      cost: cost,
      usersID: usersID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OwnedContent &&
      id == other.id &&
      _time == other._time &&
      _contentID == other._contentID &&
      _cost == other._cost &&
      _usersID == other._usersID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("OwnedContent {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("time=" + (_time != null ? _time!.format() : "null") + ", ");
    buffer.write("contentID=" + "$_contentID" + ", ");
    buffer.write("cost=" + "$_cost" + ", ");
    buffer.write("usersID=" + "$_usersID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  OwnedContent copyWith({String? id, TemporalDateTime? time, String? contentID, String? cost, String? usersID}) {
    return OwnedContent._internal(
      id: id ?? this.id,
      time: time ?? this.time,
      contentID: contentID ?? this.contentID,
      cost: cost ?? this.cost,
      usersID: usersID ?? this.usersID);
  }
  
  OwnedContent.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _time = json['time'] != null ? TemporalDateTime.fromString(json['time']) : null,
      _contentID = json['contentID'],
      _cost = json['cost'],
      _usersID = json['usersID'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'time': _time?.format(), 'contentID': _contentID, 'cost': _cost, 'usersID': _usersID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'time': _time, 'contentID': _contentID, 'cost': _cost, 'usersID': _usersID, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField TIME = QueryField(fieldName: "time");
  static final QueryField CONTENTID = QueryField(fieldName: "contentID");
  static final QueryField COST = QueryField(fieldName: "cost");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "OwnedContent";
    modelSchemaDefinition.pluralName = "OwnedContents";
    
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
      ModelIndex(fields: const ["usersID"], name: "byUsers")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OwnedContent.TIME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OwnedContent.CONTENTID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OwnedContent.COST,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OwnedContent.USERSID,
      isRequired: true,
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

class _OwnedContentModelType extends ModelType<OwnedContent> {
  const _OwnedContentModelType();
  
  @override
  OwnedContent fromJson(Map<String, dynamic> jsonData) {
    return OwnedContent.fromJson(jsonData);
  }
}