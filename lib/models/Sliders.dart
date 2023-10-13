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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Sliders type in your schema. */
@immutable
class Sliders extends Model {
  static const classType = const _SlidersModelType();
  final String id;
  final String? _type;
  final String? _image;
  final String? _name;
  final String? _contentID;
  final bool? _isClickable;
  final String? _url;
  final SliderOtpModel? _tags;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get type {
    return _type;
  }
  
  String? get image {
    return _image;
  }
  
  String? get name {
    return _name;
  }
  
  String? get contentID {
    return _contentID;
  }
  
  bool? get isClickable {
    return _isClickable;
  }
  
  String? get url {
    return _url;
  }
  
  SliderOtpModel? get tags {
    return _tags;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Sliders._internal({required this.id, type, image, name, contentID, isClickable, url, tags, createdAt, updatedAt}): _type = type, _image = image, _name = name, _contentID = contentID, _isClickable = isClickable, _url = url, _tags = tags, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Sliders({String? id, String? type, String? image, String? name, String? contentID, bool? isClickable, String? url, SliderOtpModel? tags}) {
    return Sliders._internal(
      id: id == null ? UUID.getUUID() : id,
      type: type,
      image: image,
      name: name,
      contentID: contentID,
      isClickable: isClickable,
      url: url,
      tags: tags);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sliders &&
      id == other.id &&
      _type == other._type &&
      _image == other._image &&
      _name == other._name &&
      _contentID == other._contentID &&
      _isClickable == other._isClickable &&
      _url == other._url &&
      _tags == other._tags;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Sliders {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("type=" + "$_type" + ", ");
    buffer.write("image=" + "$_image" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("contentID=" + "$_contentID" + ", ");
    buffer.write("isClickable=" + (_isClickable != null ? _isClickable!.toString() : "null") + ", ");
    buffer.write("url=" + "$_url" + ", ");
    buffer.write("tags=" + (_tags != null ? _tags!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Sliders copyWith({String? id, String? type, String? image, String? name, String? contentID, bool? isClickable, String? url, SliderOtpModel? tags}) {
    return Sliders._internal(
      id: id ?? this.id,
      type: type ?? this.type,
      image: image ?? this.image,
      name: name ?? this.name,
      contentID: contentID ?? this.contentID,
      isClickable: isClickable ?? this.isClickable,
      url: url ?? this.url,
      tags: tags ?? this.tags);
  }
  
  Sliders.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _type = json['type'],
      _image = json['image'],
      _name = json['name'],
      _contentID = json['contentID'],
      _isClickable = json['isClickable'],
      _url = json['url'],
      _tags = json['tags']?['serializedData'] != null
        ? SliderOtpModel.fromJson(new Map<String, dynamic>.from(json['tags']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'type': _type, 'image': _image, 'name': _name, 'contentID': _contentID, 'isClickable': _isClickable, 'url': _url, 'tags': _tags?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'type': _type, 'image': _image, 'name': _name, 'contentID': _contentID, 'isClickable': _isClickable, 'url': _url, 'tags': _tags, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField TYPE = QueryField(fieldName: "type");
  static final QueryField IMAGE = QueryField(fieldName: "image");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField CONTENTID = QueryField(fieldName: "contentID");
  static final QueryField ISCLICKABLE = QueryField(fieldName: "isClickable");
  static final QueryField URL = QueryField(fieldName: "url");
  static final QueryField TAGS = QueryField(fieldName: "tags");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Sliders";
    modelSchemaDefinition.pluralName = "Sliders";
    
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
      key: Sliders.TYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Sliders.IMAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Sliders.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Sliders.CONTENTID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Sliders.ISCLICKABLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Sliders.URL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'tags',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'SliderOtpModel')
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

class _SlidersModelType extends ModelType<Sliders> {
  const _SlidersModelType();
  
  @override
  Sliders fromJson(Map<String, dynamic> jsonData) {
    return Sliders.fromJson(jsonData);
  }
}