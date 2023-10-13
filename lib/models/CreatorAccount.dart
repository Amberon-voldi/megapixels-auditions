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


/** This is an auto generated class representing the CreatorAccount type in your schema. */
@immutable
class CreatorAccount extends Model {
  static const classType = const _CreatorAccountModelType();
  final String id;
  final String? _name;
  final String? _icon;
  final String? _email;
  final String? _banner;
  final List<Users>? _Subscribers;
  final String? _createrCode;
  final String? _registeredOn;
  final List<Users>? _Contents;
  final int? _totalsale;
  final bool? _Approve;
  final String? _demoContent;
  final String? _phone;
  final String? _ownerId;
  final String? _ownerName;
  final String? _doc;
  final List<String>? _owners;
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
  
  String? get icon {
    return _icon;
  }
  
  String? get email {
    return _email;
  }
  
  String? get banner {
    return _banner;
  }
  
  List<Users>? get Subscribers {
    return _Subscribers;
  }
  
  String? get createrCode {
    return _createrCode;
  }
  
  String? get registeredOn {
    return _registeredOn;
  }
  
  List<Users>? get Contents {
    return _Contents;
  }
  
  int? get totalsale {
    return _totalsale;
  }
  
  bool? get Approve {
    return _Approve;
  }
  
  String? get demoContent {
    return _demoContent;
  }
  
  String? get phone {
    return _phone;
  }
  
  String? get ownerId {
    return _ownerId;
  }
  
  String? get ownerName {
    return _ownerName;
  }
  
  String? get doc {
    return _doc;
  }
  
  List<String> get owners {
    try {
      return _owners!;
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
  
  const CreatorAccount._internal({required this.id, name, icon, email, banner, Subscribers, createrCode, registeredOn, Contents, totalsale, Approve, demoContent, phone, ownerId, ownerName, doc, required owners, createdAt, updatedAt}): _name = name, _icon = icon, _email = email, _banner = banner, _Subscribers = Subscribers, _createrCode = createrCode, _registeredOn = registeredOn, _Contents = Contents, _totalsale = totalsale, _Approve = Approve, _demoContent = demoContent, _phone = phone, _ownerId = ownerId, _ownerName = ownerName, _doc = doc, _owners = owners, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory CreatorAccount({String? id, String? name, String? icon, String? email, String? banner, List<Users>? Subscribers, String? createrCode, String? registeredOn, List<Users>? Contents, int? totalsale, bool? Approve, String? demoContent, String? phone, String? ownerId, String? ownerName, String? doc, required List<String> owners}) {
    return CreatorAccount._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      icon: icon,
      email: email,
      banner: banner,
      Subscribers: Subscribers != null ? List<Users>.unmodifiable(Subscribers) : Subscribers,
      createrCode: createrCode,
      registeredOn: registeredOn,
      Contents: Contents != null ? List<Users>.unmodifiable(Contents) : Contents,
      totalsale: totalsale,
      Approve: Approve,
      demoContent: demoContent,
      phone: phone,
      ownerId: ownerId,
      ownerName: ownerName,
      doc: doc,
      owners: owners != null ? List<String>.unmodifiable(owners) : owners);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatorAccount &&
      id == other.id &&
      _name == other._name &&
      _icon == other._icon &&
      _email == other._email &&
      _banner == other._banner &&
      DeepCollectionEquality().equals(_Subscribers, other._Subscribers) &&
      _createrCode == other._createrCode &&
      _registeredOn == other._registeredOn &&
      DeepCollectionEquality().equals(_Contents, other._Contents) &&
      _totalsale == other._totalsale &&
      _Approve == other._Approve &&
      _demoContent == other._demoContent &&
      _phone == other._phone &&
      _ownerId == other._ownerId &&
      _ownerName == other._ownerName &&
      _doc == other._doc &&
      DeepCollectionEquality().equals(_owners, other._owners);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CreatorAccount {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("icon=" + "$_icon" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("banner=" + "$_banner" + ", ");
    buffer.write("createrCode=" + "$_createrCode" + ", ");
    buffer.write("registeredOn=" + "$_registeredOn" + ", ");
    buffer.write("totalsale=" + (_totalsale != null ? _totalsale!.toString() : "null") + ", ");
    buffer.write("Approve=" + (_Approve != null ? _Approve!.toString() : "null") + ", ");
    buffer.write("demoContent=" + "$_demoContent" + ", ");
    buffer.write("phone=" + "$_phone" + ", ");
    buffer.write("ownerId=" + "$_ownerId" + ", ");
    buffer.write("ownerName=" + "$_ownerName" + ", ");
    buffer.write("doc=" + "$_doc" + ", ");
    buffer.write("owners=" + (_owners != null ? _owners!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CreatorAccount copyWith({String? id, String? name, String? icon, String? email, String? banner, List<Users>? Subscribers, String? createrCode, String? registeredOn, List<Users>? Contents, int? totalsale, bool? Approve, String? demoContent, String? phone, String? ownerId, String? ownerName, String? doc, List<String>? owners}) {
    return CreatorAccount._internal(
      id: id ?? this.id,
      name: name ?? this.name,
      icon: icon ?? this.icon,
      email: email ?? this.email,
      banner: banner ?? this.banner,
      Subscribers: Subscribers ?? this.Subscribers,
      createrCode: createrCode ?? this.createrCode,
      registeredOn: registeredOn ?? this.registeredOn,
      Contents: Contents ?? this.Contents,
      totalsale: totalsale ?? this.totalsale,
      Approve: Approve ?? this.Approve,
      demoContent: demoContent ?? this.demoContent,
      phone: phone ?? this.phone,
      ownerId: ownerId ?? this.ownerId,
      ownerName: ownerName ?? this.ownerName,
      doc: doc ?? this.doc,
      owners: owners ?? this.owners);
  }
  
  CreatorAccount.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _icon = json['icon'],
      _email = json['email'],
      _banner = json['banner'],
      _Subscribers = json['Subscribers'] is List
        ? (json['Subscribers'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Users.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createrCode = json['createrCode'],
      _registeredOn = json['registeredOn'],
      _Contents = json['Contents'] is List
        ? (json['Contents'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Users.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _totalsale = (json['totalsale'] as num?)?.toInt(),
      _Approve = json['Approve'],
      _demoContent = json['demoContent'],
      _phone = json['phone'],
      _ownerId = json['ownerId'],
      _ownerName = json['ownerName'],
      _doc = json['doc'],
      _owners = json['owners']?.cast<String>(),
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'icon': _icon, 'email': _email, 'banner': _banner, 'Subscribers': _Subscribers?.map((Users? e) => e?.toJson()).toList(), 'createrCode': _createrCode, 'registeredOn': _registeredOn, 'Contents': _Contents?.map((Users? e) => e?.toJson()).toList(), 'totalsale': _totalsale, 'Approve': _Approve, 'demoContent': _demoContent, 'phone': _phone, 'ownerId': _ownerId, 'ownerName': _ownerName, 'doc': _doc, 'owners': _owners, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'icon': _icon, 'email': _email, 'banner': _banner, 'Subscribers': _Subscribers, 'createrCode': _createrCode, 'registeredOn': _registeredOn, 'Contents': _Contents, 'totalsale': _totalsale, 'Approve': _Approve, 'demoContent': _demoContent, 'phone': _phone, 'ownerId': _ownerId, 'ownerName': _ownerName, 'doc': _doc, 'owners': _owners, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField ICON = QueryField(fieldName: "icon");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField BANNER = QueryField(fieldName: "banner");
  static final QueryField SUBSCRIBERS = QueryField(
    fieldName: "Subscribers",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Users).toString()));
  static final QueryField CREATERCODE = QueryField(fieldName: "createrCode");
  static final QueryField REGISTEREDON = QueryField(fieldName: "registeredOn");
  static final QueryField CONTENTS = QueryField(
    fieldName: "Contents",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Users).toString()));
  static final QueryField TOTALSALE = QueryField(fieldName: "totalsale");
  static final QueryField APPROVE = QueryField(fieldName: "Approve");
  static final QueryField DEMOCONTENT = QueryField(fieldName: "demoContent");
  static final QueryField PHONE = QueryField(fieldName: "phone");
  static final QueryField OWNERID = QueryField(fieldName: "ownerId");
  static final QueryField OWNERNAME = QueryField(fieldName: "ownerName");
  static final QueryField DOC = QueryField(fieldName: "doc");
  static final QueryField OWNERS = QueryField(fieldName: "owners");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CreatorAccount";
    modelSchemaDefinition.pluralName = "CreatorAccounts";
    
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
      key: CreatorAccount.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatorAccount.ICON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatorAccount.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatorAccount.BANNER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: CreatorAccount.SUBSCRIBERS,
      isRequired: false,
      ofModelName: (Users).toString(),
      associatedKey: Users.CREATORACCOUNTID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatorAccount.CREATERCODE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatorAccount.REGISTEREDON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: CreatorAccount.CONTENTS,
      isRequired: false,
      ofModelName: (Users).toString(),
      associatedKey: Users.CREATORACCOUNTID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatorAccount.TOTALSALE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatorAccount.APPROVE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatorAccount.DEMOCONTENT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatorAccount.PHONE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatorAccount.OWNERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatorAccount.OWNERNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatorAccount.DOC,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatorAccount.OWNERS,
      isRequired: true,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
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

class _CreatorAccountModelType extends ModelType<CreatorAccount> {
  const _CreatorAccountModelType();
  
  @override
  CreatorAccount fromJson(Map<String, dynamic> jsonData) {
    return CreatorAccount.fromJson(jsonData);
  }
}