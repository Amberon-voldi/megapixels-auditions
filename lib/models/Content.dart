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

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Content type in your schema. */
@immutable
class Content extends Model {
  static const classType = const _ContentModelType();
  final String id;
  final ContentTypeModel? _type;
  final String? _contentId;
  final String? _thumbnail;
  final String? _banner;
  final String? _tittle;
  final String? _description;
  final TemporalDateTime? _addedAt;
  final int? _cost;
  final bool? _isFre;
  final String? _trailer;
  final String? _url;
  final List<Episode>? _Episodes;
  final String? _tags;
  final String? _creatoraccountID;
  final GenreModel? _genre;
  final bool? _Approve;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  ContentTypeModel? get type {
    return _type;
  }
  
  String? get contentId {
    return _contentId;
  }
  
  String? get thumbnail {
    return _thumbnail;
  }
  
  String? get banner {
    return _banner;
  }
  
  String? get tittle {
    return _tittle;
  }
  
  String? get description {
    return _description;
  }
  
  TemporalDateTime? get addedAt {
    return _addedAt;
  }
  
  int? get cost {
    return _cost;
  }
  
  bool? get isFre {
    return _isFre;
  }
  
  String? get trailer {
    return _trailer;
  }
  
  String? get url {
    return _url;
  }
  
  List<Episode>? get Episodes {
    return _Episodes;
  }
  
  String? get tags {
    return _tags;
  }
  
  String get creatoraccountID {
    try {
      return _creatoraccountID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  GenreModel? get genre {
    return _genre;
  }
  
  bool? get Approve {
    return _Approve;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Content._internal({required this.id, type, contentId, thumbnail, banner, tittle, description, addedAt, cost, isFre, trailer, url, Episodes, tags, required creatoraccountID, genre, Approve, createdAt, updatedAt}): _type = type, _contentId = contentId, _thumbnail = thumbnail, _banner = banner, _tittle = tittle, _description = description, _addedAt = addedAt, _cost = cost, _isFre = isFre, _trailer = trailer, _url = url, _Episodes = Episodes, _tags = tags, _creatoraccountID = creatoraccountID, _genre = genre, _Approve = Approve, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Content({String? id, ContentTypeModel? type, String? contentId, String? thumbnail, String? banner, String? tittle, String? description, TemporalDateTime? addedAt, int? cost, bool? isFre, String? trailer, String? url, List<Episode>? Episodes, String? tags, required String creatoraccountID, GenreModel? genre, bool? Approve}) {
    return Content._internal(
      id: id == null ? UUID.getUUID() : id,
      type: type,
      contentId: contentId,
      thumbnail: thumbnail,
      banner: banner,
      tittle: tittle,
      description: description,
      addedAt: addedAt,
      cost: cost,
      isFre: isFre,
      trailer: trailer,
      url: url,
      Episodes: Episodes != null ? List<Episode>.unmodifiable(Episodes) : Episodes,
      tags: tags,
      creatoraccountID: creatoraccountID,
      genre: genre,
      Approve: Approve);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Content &&
      id == other.id &&
      _type == other._type &&
      _contentId == other._contentId &&
      _thumbnail == other._thumbnail &&
      _banner == other._banner &&
      _tittle == other._tittle &&
      _description == other._description &&
      _addedAt == other._addedAt &&
      _cost == other._cost &&
      _isFre == other._isFre &&
      _trailer == other._trailer &&
      _url == other._url &&
      DeepCollectionEquality().equals(_Episodes, other._Episodes) &&
      _tags == other._tags &&
      _creatoraccountID == other._creatoraccountID &&
      _genre == other._genre &&
      _Approve == other._Approve;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Content {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("type=" + (_type != null ? _type!.toString() : "null") + ", ");
    buffer.write("contentId=" + "$_contentId" + ", ");
    buffer.write("thumbnail=" + "$_thumbnail" + ", ");
    buffer.write("banner=" + "$_banner" + ", ");
    buffer.write("tittle=" + "$_tittle" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("addedAt=" + (_addedAt != null ? _addedAt!.format() : "null") + ", ");
    buffer.write("cost=" + (_cost != null ? _cost!.toString() : "null") + ", ");
    buffer.write("isFre=" + (_isFre != null ? _isFre!.toString() : "null") + ", ");
    buffer.write("trailer=" + "$_trailer" + ", ");
    buffer.write("url=" + "$_url" + ", ");
    buffer.write("tags=" + "$_tags" + ", ");
    buffer.write("creatoraccountID=" + "$_creatoraccountID" + ", ");
    buffer.write("genre=" + (_genre != null ? _genre!.toString() : "null") + ", ");
    buffer.write("Approve=" + (_Approve != null ? _Approve!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Content copyWith({String? id, ContentTypeModel? type, String? contentId, String? thumbnail, String? banner, String? tittle, String? description, TemporalDateTime? addedAt, int? cost, bool? isFre, String? trailer, String? url, List<Episode>? Episodes, String? tags, String? creatoraccountID, GenreModel? genre, bool? Approve}) {
    return Content._internal(
      id: id ?? this.id,
      type: type ?? this.type,
      contentId: contentId ?? this.contentId,
      thumbnail: thumbnail ?? this.thumbnail,
      banner: banner ?? this.banner,
      tittle: tittle ?? this.tittle,
      description: description ?? this.description,
      addedAt: addedAt ?? this.addedAt,
      cost: cost ?? this.cost,
      isFre: isFre ?? this.isFre,
      trailer: trailer ?? this.trailer,
      url: url ?? this.url,
      Episodes: Episodes ?? this.Episodes,
      tags: tags ?? this.tags,
      creatoraccountID: creatoraccountID ?? this.creatoraccountID,
      genre: genre ?? this.genre,
      Approve: Approve ?? this.Approve);
  }
  
  Content.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _type = json['type']?['serializedData'] != null
        ? ContentTypeModel.fromJson(new Map<String, dynamic>.from(json['type']['serializedData']))
        : null,
      _contentId = json['contentId'],
      _thumbnail = json['thumbnail'],
      _banner = json['banner'],
      _tittle = json['tittle'],
      _description = json['description'],
      _addedAt = json['addedAt'] != null ? TemporalDateTime.fromString(json['addedAt']) : null,
      _cost = (json['cost'] as num?)?.toInt(),
      _isFre = json['isFre'],
      _trailer = json['trailer'],
      _url = json['url'],
      _Episodes = json['Episodes'] is List
        ? (json['Episodes'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Episode.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _tags = json['tags'],
      _creatoraccountID = json['creatoraccountID'],
      _genre = json['genre']?['serializedData'] != null
        ? GenreModel.fromJson(new Map<String, dynamic>.from(json['genre']['serializedData']))
        : null,
      _Approve = json['Approve'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'type': _type?.toJson(), 'contentId': _contentId, 'thumbnail': _thumbnail, 'banner': _banner, 'tittle': _tittle, 'description': _description, 'addedAt': _addedAt?.format(), 'cost': _cost, 'isFre': _isFre, 'trailer': _trailer, 'url': _url, 'Episodes': _Episodes?.map((Episode? e) => e?.toJson()).toList(), 'tags': _tags, 'creatoraccountID': _creatoraccountID, 'genre': _genre?.toJson(), 'Approve': _Approve, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'type': _type, 'contentId': _contentId, 'thumbnail': _thumbnail, 'banner': _banner, 'tittle': _tittle, 'description': _description, 'addedAt': _addedAt, 'cost': _cost, 'isFre': _isFre, 'trailer': _trailer, 'url': _url, 'Episodes': _Episodes, 'tags': _tags, 'creatoraccountID': _creatoraccountID, 'genre': _genre, 'Approve': _Approve, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField TYPE = QueryField(fieldName: "type");
  static final QueryField CONTENTID = QueryField(fieldName: "contentId");
  static final QueryField THUMBNAIL = QueryField(fieldName: "thumbnail");
  static final QueryField BANNER = QueryField(fieldName: "banner");
  static final QueryField TITTLE = QueryField(fieldName: "tittle");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField ADDEDAT = QueryField(fieldName: "addedAt");
  static final QueryField COST = QueryField(fieldName: "cost");
  static final QueryField ISFRE = QueryField(fieldName: "isFre");
  static final QueryField TRAILER = QueryField(fieldName: "trailer");
  static final QueryField URL = QueryField(fieldName: "url");
  static final QueryField EPISODES = QueryField(
    fieldName: "Episodes",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Episode).toString()));
  static final QueryField TAGS = QueryField(fieldName: "tags");
  static final QueryField CREATORACCOUNTID = QueryField(fieldName: "creatoraccountID");
  static final QueryField GENRE = QueryField(fieldName: "genre");
  static final QueryField APPROVE = QueryField(fieldName: "Approve");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Content";
    modelSchemaDefinition.pluralName = "Contents";
    
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
      ModelIndex(fields: const ["creatoraccountID"], name: "byCreatorAccount")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'type',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'ContentTypeModel')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Content.CONTENTID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Content.THUMBNAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Content.BANNER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Content.TITTLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Content.DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Content.ADDEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Content.COST,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Content.ISFRE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Content.TRAILER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Content.URL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Content.EPISODES,
      isRequired: false,
      ofModelName: (Episode).toString(),
      associatedKey: Episode.CONTENTID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Content.TAGS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Content.CREATORACCOUNTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'genre',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'GenreModel')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Content.APPROVE,
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

class _ContentModelType extends ModelType<Content> {
  const _ContentModelType();
  
  @override
  Content fromJson(Map<String, dynamic> jsonData) {
    return Content.fromJson(jsonData);
  }
}