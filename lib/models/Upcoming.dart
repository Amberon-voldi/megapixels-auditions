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


/** This is an auto generated class representing the Upcoming type in your schema. */
@immutable
class Upcoming extends Model {
  static const classType = const _UpcomingModelType();
  final String id;
  final String? _name;
  final String? _trailer;
  final String? _description;
  final String? _banner;
  final bool? _streaming;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get name {
    return _name;
  }
  
  String? get trailer {
    return _trailer;
  }
  
  String? get description {
    return _description;
  }
  
  String? get banner {
    return _banner;
  }
  
  bool? get streaming {
    return _streaming;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Upcoming._internal({required this.id, name, trailer, description, banner, streaming, createdAt, updatedAt}): _name = name, _trailer = trailer, _description = description, _banner = banner, _streaming = streaming, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Upcoming({String? id, String? name, String? trailer, String? description, String? banner, bool? streaming}) {
    return Upcoming._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      trailer: trailer,
      description: description,
      banner: banner,
      streaming: streaming);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Upcoming &&
      id == other.id &&
      _name == other._name &&
      _trailer == other._trailer &&
      _description == other._description &&
      _banner == other._banner &&
      _streaming == other._streaming;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Upcoming {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("trailer=" + "$_trailer" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("banner=" + "$_banner" + ", ");
    buffer.write("streaming=" + (_streaming != null ? _streaming!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Upcoming copyWith({String? id, String? name, String? trailer, String? description, String? banner, bool? streaming}) {
    return Upcoming._internal(
      id: id ?? this.id,
      name: name ?? this.name,
      trailer: trailer ?? this.trailer,
      description: description ?? this.description,
      banner: banner ?? this.banner,
      streaming: streaming ?? this.streaming);
  }
  
  Upcoming.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _trailer = json['trailer'],
      _description = json['description'],
      _banner = json['banner'],
      _streaming = json['streaming'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'trailer': _trailer, 'description': _description, 'banner': _banner, 'streaming': _streaming, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'trailer': _trailer, 'description': _description, 'banner': _banner, 'streaming': _streaming, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField TRAILER = QueryField(fieldName: "trailer");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField BANNER = QueryField(fieldName: "banner");
  static final QueryField STREAMING = QueryField(fieldName: "streaming");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Upcoming";
    modelSchemaDefinition.pluralName = "Upcomings";
    
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
      key: Upcoming.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Upcoming.TRAILER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Upcoming.DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Upcoming.BANNER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Upcoming.STREAMING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
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

class _UpcomingModelType extends ModelType<Upcoming> {
  const _UpcomingModelType();
  
  @override
  Upcoming fromJson(Map<String, dynamic> jsonData) {
    return Upcoming.fromJson(jsonData);
  }
}