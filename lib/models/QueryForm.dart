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


/** This is an auto generated class representing the QueryForm type in your schema. */
@immutable
class QueryForm extends Model {
  static const classType = const _QueryFormModelType();
  final String id;
  final String? _userId;
  final String? _tags;
  final String? _subject;
  final String? _message;
  final String? _contacts;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get userId {
    return _userId;
  }
  
  String? get tags {
    return _tags;
  }
  
  String? get subject {
    return _subject;
  }
  
  String? get message {
    return _message;
  }
  
  String? get contacts {
    return _contacts;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const QueryForm._internal({required this.id, userId, tags, subject, message, contacts, createdAt, updatedAt}): _userId = userId, _tags = tags, _subject = subject, _message = message, _contacts = contacts, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory QueryForm({String? id, String? userId, String? tags, String? subject, String? message, String? contacts}) {
    return QueryForm._internal(
      id: id == null ? UUID.getUUID() : id,
      userId: userId,
      tags: tags,
      subject: subject,
      message: message,
      contacts: contacts);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryForm &&
      id == other.id &&
      _userId == other._userId &&
      _tags == other._tags &&
      _subject == other._subject &&
      _message == other._message &&
      _contacts == other._contacts;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("QueryForm {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("userId=" + "$_userId" + ", ");
    buffer.write("tags=" + "$_tags" + ", ");
    buffer.write("subject=" + "$_subject" + ", ");
    buffer.write("message=" + "$_message" + ", ");
    buffer.write("contacts=" + "$_contacts" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  QueryForm copyWith({String? id, String? userId, String? tags, String? subject, String? message, String? contacts}) {
    return QueryForm._internal(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      tags: tags ?? this.tags,
      subject: subject ?? this.subject,
      message: message ?? this.message,
      contacts: contacts ?? this.contacts);
  }
  
  QueryForm.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _userId = json['userId'],
      _tags = json['tags'],
      _subject = json['subject'],
      _message = json['message'],
      _contacts = json['contacts'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'userId': _userId, 'tags': _tags, 'subject': _subject, 'message': _message, 'contacts': _contacts, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'userId': _userId, 'tags': _tags, 'subject': _subject, 'message': _message, 'contacts': _contacts, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField USERID = QueryField(fieldName: "userId");
  static final QueryField TAGS = QueryField(fieldName: "tags");
  static final QueryField SUBJECT = QueryField(fieldName: "subject");
  static final QueryField MESSAGE = QueryField(fieldName: "message");
  static final QueryField CONTACTS = QueryField(fieldName: "contacts");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "QueryForm";
    modelSchemaDefinition.pluralName = "QueryForms";
    
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
      key: QueryForm.USERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: QueryForm.TAGS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: QueryForm.SUBJECT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: QueryForm.MESSAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: QueryForm.CONTACTS,
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

class _QueryFormModelType extends ModelType<QueryForm> {
  const _QueryFormModelType();
  
  @override
  QueryForm fromJson(Map<String, dynamic> jsonData) {
    return QueryForm.fromJson(jsonData);
  }
}