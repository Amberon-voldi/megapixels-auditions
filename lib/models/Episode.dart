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


/** This is an auto generated class representing the Episode type in your schema. */
@immutable
class Episode extends Model {
  static const classType = const _EpisodeModelType();
  final String id;
  final String? _contentID;
  final String? _title;
  final String? _description;
  final String? _thumbnail;
  final String? _url;
  final TemporalDateTime? _addedAt;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get contentID {
    try {
      return _contentID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get title {
    return _title;
  }
  
  String? get description {
    return _description;
  }
  
  String? get thumbnail {
    return _thumbnail;
  }
  
  String? get url {
    return _url;
  }
  
  TemporalDateTime? get addedAt {
    return _addedAt;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Episode._internal({required this.id, required contentID, title, description, thumbnail, url, addedAt, createdAt, updatedAt}): _contentID = contentID, _title = title, _description = description, _thumbnail = thumbnail, _url = url, _addedAt = addedAt, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Episode({String? id, required String contentID, String? title, String? description, String? thumbnail, String? url, TemporalDateTime? addedAt}) {
    return Episode._internal(
      id: id == null ? UUID.getUUID() : id,
      contentID: contentID,
      title: title,
      description: description,
      thumbnail: thumbnail,
      url: url,
      addedAt: addedAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Episode &&
      id == other.id &&
      _contentID == other._contentID &&
      _title == other._title &&
      _description == other._description &&
      _thumbnail == other._thumbnail &&
      _url == other._url &&
      _addedAt == other._addedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Episode {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("contentID=" + "$_contentID" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("thumbnail=" + "$_thumbnail" + ", ");
    buffer.write("url=" + "$_url" + ", ");
    buffer.write("addedAt=" + (_addedAt != null ? _addedAt!.format() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Episode copyWith({String? id, String? contentID, String? title, String? description, String? thumbnail, String? url, TemporalDateTime? addedAt}) {
    return Episode._internal(
      id: id ?? this.id,
      contentID: contentID ?? this.contentID,
      title: title ?? this.title,
      description: description ?? this.description,
      thumbnail: thumbnail ?? this.thumbnail,
      url: url ?? this.url,
      addedAt: addedAt ?? this.addedAt);
  }
  
  Episode.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _contentID = json['contentID'],
      _title = json['title'],
      _description = json['description'],
      _thumbnail = json['thumbnail'],
      _url = json['url'],
      _addedAt = json['addedAt'] != null ? TemporalDateTime.fromString(json['addedAt']) : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'contentID': _contentID, 'title': _title, 'description': _description, 'thumbnail': _thumbnail, 'url': _url, 'addedAt': _addedAt?.format(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'contentID': _contentID, 'title': _title, 'description': _description, 'thumbnail': _thumbnail, 'url': _url, 'addedAt': _addedAt, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField CONTENTID = QueryField(fieldName: "contentID");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField THUMBNAIL = QueryField(fieldName: "thumbnail");
  static final QueryField URL = QueryField(fieldName: "url");
  static final QueryField ADDEDAT = QueryField(fieldName: "addedAt");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Episode";
    modelSchemaDefinition.pluralName = "Episodes";
    
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
      ModelIndex(fields: const ["contentID"], name: "byContent")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Episode.CONTENTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Episode.TITLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Episode.DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Episode.THUMBNAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Episode.URL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Episode.ADDEDAT,
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

class _EpisodeModelType extends ModelType<Episode> {
  const _EpisodeModelType();
  
  @override
  Episode fromJson(Map<String, dynamic> jsonData) {
    return Episode.fromJson(jsonData);
  }
}