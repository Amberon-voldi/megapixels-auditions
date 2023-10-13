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


/** This is an auto generated class representing the NotificationModel type in your schema. */
@immutable
class NotificationModel extends Model {
  static const classType = const _NotificationModelModelType();
  final String id;
  final String? _title;
  final String? _metaData;
  final TemporalDateTime? _date;
  final bool? _isPublic;
  final String? _user;
  final String? _message;
  final bool? _isClickable;
  final String? _clickedContent;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get title {
    return _title;
  }
  
  String? get metaData {
    return _metaData;
  }
  
  TemporalDateTime? get date {
    return _date;
  }
  
  bool? get isPublic {
    return _isPublic;
  }
  
  String? get user {
    return _user;
  }
  
  String? get message {
    return _message;
  }
  
  bool? get isClickable {
    return _isClickable;
  }
  
  String? get clickedContent {
    return _clickedContent;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const NotificationModel._internal({required this.id, title, metaData, date, isPublic, user, message, isClickable, clickedContent, createdAt, updatedAt}): _title = title, _metaData = metaData, _date = date, _isPublic = isPublic, _user = user, _message = message, _isClickable = isClickable, _clickedContent = clickedContent, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory NotificationModel({String? id, String? title, String? metaData, TemporalDateTime? date, bool? isPublic, String? user, String? message, bool? isClickable, String? clickedContent}) {
    return NotificationModel._internal(
      id: id == null ? UUID.getUUID() : id,
      title: title,
      metaData: metaData,
      date: date,
      isPublic: isPublic,
      user: user,
      message: message,
      isClickable: isClickable,
      clickedContent: clickedContent);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationModel &&
      id == other.id &&
      _title == other._title &&
      _metaData == other._metaData &&
      _date == other._date &&
      _isPublic == other._isPublic &&
      _user == other._user &&
      _message == other._message &&
      _isClickable == other._isClickable &&
      _clickedContent == other._clickedContent;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("NotificationModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("metaData=" + "$_metaData" + ", ");
    buffer.write("date=" + (_date != null ? _date!.format() : "null") + ", ");
    buffer.write("isPublic=" + (_isPublic != null ? _isPublic!.toString() : "null") + ", ");
    buffer.write("user=" + "$_user" + ", ");
    buffer.write("message=" + "$_message" + ", ");
    buffer.write("isClickable=" + (_isClickable != null ? _isClickable!.toString() : "null") + ", ");
    buffer.write("clickedContent=" + "$_clickedContent" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  NotificationModel copyWith({String? id, String? title, String? metaData, TemporalDateTime? date, bool? isPublic, String? user, String? message, bool? isClickable, String? clickedContent}) {
    return NotificationModel._internal(
      id: id ?? this.id,
      title: title ?? this.title,
      metaData: metaData ?? this.metaData,
      date: date ?? this.date,
      isPublic: isPublic ?? this.isPublic,
      user: user ?? this.user,
      message: message ?? this.message,
      isClickable: isClickable ?? this.isClickable,
      clickedContent: clickedContent ?? this.clickedContent);
  }
  
  NotificationModel.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _metaData = json['metaData'],
      _date = json['date'] != null ? TemporalDateTime.fromString(json['date']) : null,
      _isPublic = json['isPublic'],
      _user = json['user'],
      _message = json['message'],
      _isClickable = json['isClickable'],
      _clickedContent = json['clickedContent'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'metaData': _metaData, 'date': _date?.format(), 'isPublic': _isPublic, 'user': _user, 'message': _message, 'isClickable': _isClickable, 'clickedContent': _clickedContent, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'title': _title, 'metaData': _metaData, 'date': _date, 'isPublic': _isPublic, 'user': _user, 'message': _message, 'isClickable': _isClickable, 'clickedContent': _clickedContent, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField METADATA = QueryField(fieldName: "metaData");
  static final QueryField DATE = QueryField(fieldName: "date");
  static final QueryField ISPUBLIC = QueryField(fieldName: "isPublic");
  static final QueryField USER = QueryField(fieldName: "user");
  static final QueryField MESSAGE = QueryField(fieldName: "message");
  static final QueryField ISCLICKABLE = QueryField(fieldName: "isClickable");
  static final QueryField CLICKEDCONTENT = QueryField(fieldName: "clickedContent");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "NotificationModel";
    modelSchemaDefinition.pluralName = "NotificationModels";
    
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
      key: NotificationModel.TITLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: NotificationModel.METADATA,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: NotificationModel.DATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: NotificationModel.ISPUBLIC,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: NotificationModel.USER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: NotificationModel.MESSAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: NotificationModel.ISCLICKABLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: NotificationModel.CLICKEDCONTENT,
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

class _NotificationModelModelType extends ModelType<NotificationModel> {
  const _NotificationModelModelType();
  
  @override
  NotificationModel fromJson(Map<String, dynamic> jsonData) {
    return NotificationModel.fromJson(jsonData);
  }
}