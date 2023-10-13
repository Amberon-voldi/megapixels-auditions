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


/** This is an auto generated class representing the Users type in your schema. */
@immutable
class Users extends Model {
  static const classType = const _UsersModelType();
  final String id;
  final String? _username;
  final int? _coins;
  final String? _email;
  final List<String>? _shows;
  final String? _banner;
  final String? _pfp;
  final String? _uid;
  final String? _phone;
  final List<Oye>? _Oyes;
  final List<OwnedContent>? _OwnedContents;
  final List<CommentModel>? _CommentModels;
  final int? _totallikes;
  final int? _postlimit;
  final List<Subscribe>? _Subscribed;
  final String? _creatoraccountID;
  final bool? _verified;
  final int? _karma;
  final String? _refercode;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get username {
    try {
      return _username!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int? get coins {
    return _coins;
  }
  
  String? get email {
    return _email;
  }
  
  List<String>? get shows {
    return _shows;
  }
  
  String? get banner {
    return _banner;
  }
  
  String? get pfp {
    return _pfp;
  }
  
  String? get uid {
    return _uid;
  }
  
  String? get phone {
    return _phone;
  }
  
  List<Oye>? get Oyes {
    return _Oyes;
  }
  
  List<OwnedContent>? get OwnedContents {
    return _OwnedContents;
  }
  
  List<CommentModel>? get CommentModels {
    return _CommentModels;
  }
  
  int? get totallikes {
    return _totallikes;
  }
  
  int? get postlimit {
    return _postlimit;
  }
  
  List<Subscribe>? get Subscribed {
    return _Subscribed;
  }
  
  String? get creatoraccountID {
    return _creatoraccountID;
  }
  
  bool? get verified {
    return _verified;
  }
  
  int? get karma {
    return _karma;
  }
  
  String? get refercode {
    return _refercode;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Users._internal({required this.id, required username, coins, email, shows, banner, pfp, uid, phone, Oyes, OwnedContents, CommentModels, totallikes, postlimit, Subscribed, creatoraccountID, verified, karma, refercode, createdAt, updatedAt}): _username = username, _coins = coins, _email = email, _shows = shows, _banner = banner, _pfp = pfp, _uid = uid, _phone = phone, _Oyes = Oyes, _OwnedContents = OwnedContents, _CommentModels = CommentModels, _totallikes = totallikes, _postlimit = postlimit, _Subscribed = Subscribed, _creatoraccountID = creatoraccountID, _verified = verified, _karma = karma, _refercode = refercode, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Users({String? id, required String username, int? coins, String? email, List<String>? shows, String? banner, String? pfp, String? uid, String? phone, List<Oye>? Oyes, List<OwnedContent>? OwnedContents, List<CommentModel>? CommentModels, int? totallikes, int? postlimit, List<Subscribe>? Subscribed, String? creatoraccountID, bool? verified, int? karma, String? refercode}) {
    return Users._internal(
      id: id == null ? UUID.getUUID() : id,
      username: username,
      coins: coins,
      email: email,
      shows: shows != null ? List<String>.unmodifiable(shows) : shows,
      banner: banner,
      pfp: pfp,
      uid: uid,
      phone: phone,
      Oyes: Oyes != null ? List<Oye>.unmodifiable(Oyes) : Oyes,
      OwnedContents: OwnedContents != null ? List<OwnedContent>.unmodifiable(OwnedContents) : OwnedContents,
      CommentModels: CommentModels != null ? List<CommentModel>.unmodifiable(CommentModels) : CommentModels,
      totallikes: totallikes,
      postlimit: postlimit,
      Subscribed: Subscribed != null ? List<Subscribe>.unmodifiable(Subscribed) : Subscribed,
      creatoraccountID: creatoraccountID,
      verified: verified,
      karma: karma,
      refercode: refercode);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Users &&
      id == other.id &&
      _username == other._username &&
      _coins == other._coins &&
      _email == other._email &&
      DeepCollectionEquality().equals(_shows, other._shows) &&
      _banner == other._banner &&
      _pfp == other._pfp &&
      _uid == other._uid &&
      _phone == other._phone &&
      DeepCollectionEquality().equals(_Oyes, other._Oyes) &&
      DeepCollectionEquality().equals(_OwnedContents, other._OwnedContents) &&
      DeepCollectionEquality().equals(_CommentModels, other._CommentModels) &&
      _totallikes == other._totallikes &&
      _postlimit == other._postlimit &&
      DeepCollectionEquality().equals(_Subscribed, other._Subscribed) &&
      _creatoraccountID == other._creatoraccountID &&
      _verified == other._verified &&
      _karma == other._karma &&
      _refercode == other._refercode;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Users {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("username=" + "$_username" + ", ");
    buffer.write("coins=" + (_coins != null ? _coins!.toString() : "null") + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("shows=" + (_shows != null ? _shows!.toString() : "null") + ", ");
    buffer.write("banner=" + "$_banner" + ", ");
    buffer.write("pfp=" + "$_pfp" + ", ");
    buffer.write("uid=" + "$_uid" + ", ");
    buffer.write("phone=" + "$_phone" + ", ");
    buffer.write("totallikes=" + (_totallikes != null ? _totallikes!.toString() : "null") + ", ");
    buffer.write("postlimit=" + (_postlimit != null ? _postlimit!.toString() : "null") + ", ");
    buffer.write("creatoraccountID=" + "$_creatoraccountID" + ", ");
    buffer.write("verified=" + (_verified != null ? _verified!.toString() : "null") + ", ");
    buffer.write("karma=" + (_karma != null ? _karma!.toString() : "null") + ", ");
    buffer.write("refercode=" + "$_refercode" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Users copyWith({String? id, String? username, int? coins, String? email, List<String>? shows, String? banner, String? pfp, String? uid, String? phone, List<Oye>? Oyes, List<OwnedContent>? OwnedContents, List<CommentModel>? CommentModels, int? totallikes, int? postlimit, List<Subscribe>? Subscribed, String? creatoraccountID, bool? verified, int? karma, String? refercode}) {
    return Users._internal(
      id: id ?? this.id,
      username: username ?? this.username,
      coins: coins ?? this.coins,
      email: email ?? this.email,
      shows: shows ?? this.shows,
      banner: banner ?? this.banner,
      pfp: pfp ?? this.pfp,
      uid: uid ?? this.uid,
      phone: phone ?? this.phone,
      Oyes: Oyes ?? this.Oyes,
      OwnedContents: OwnedContents ?? this.OwnedContents,
      CommentModels: CommentModels ?? this.CommentModels,
      totallikes: totallikes ?? this.totallikes,
      postlimit: postlimit ?? this.postlimit,
      Subscribed: Subscribed ?? this.Subscribed,
      creatoraccountID: creatoraccountID ?? this.creatoraccountID,
      verified: verified ?? this.verified,
      karma: karma ?? this.karma,
      refercode: refercode ?? this.refercode);
  }
  
  Users.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _username = json['username'],
      _coins = (json['coins'] as num?)?.toInt(),
      _email = json['email'],
      _shows = json['shows']?.cast<String>(),
      _banner = json['banner'],
      _pfp = json['pfp'],
      _uid = json['uid'],
      _phone = json['phone'],
      _Oyes = json['Oyes'] is List
        ? (json['Oyes'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Oye.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _OwnedContents = json['OwnedContents'] is List
        ? (json['OwnedContents'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => OwnedContent.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _CommentModels = json['CommentModels'] is List
        ? (json['CommentModels'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => CommentModel.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _totallikes = (json['totallikes'] as num?)?.toInt(),
      _postlimit = (json['postlimit'] as num?)?.toInt(),
      _Subscribed = json['Subscribed'] is List
        ? (json['Subscribed'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Subscribe.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _creatoraccountID = json['creatoraccountID'],
      _verified = json['verified'],
      _karma = (json['karma'] as num?)?.toInt(),
      _refercode = json['refercode'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'username': _username, 'coins': _coins, 'email': _email, 'shows': _shows, 'banner': _banner, 'pfp': _pfp, 'uid': _uid, 'phone': _phone, 'Oyes': _Oyes?.map((Oye? e) => e?.toJson()).toList(), 'OwnedContents': _OwnedContents?.map((OwnedContent? e) => e?.toJson()).toList(), 'CommentModels': _CommentModels?.map((CommentModel? e) => e?.toJson()).toList(), 'totallikes': _totallikes, 'postlimit': _postlimit, 'Subscribed': _Subscribed?.map((Subscribe? e) => e?.toJson()).toList(), 'creatoraccountID': _creatoraccountID, 'verified': _verified, 'karma': _karma, 'refercode': _refercode, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'username': _username, 'coins': _coins, 'email': _email, 'shows': _shows, 'banner': _banner, 'pfp': _pfp, 'uid': _uid, 'phone': _phone, 'Oyes': _Oyes, 'OwnedContents': _OwnedContents, 'CommentModels': _CommentModels, 'totallikes': _totallikes, 'postlimit': _postlimit, 'Subscribed': _Subscribed, 'creatoraccountID': _creatoraccountID, 'verified': _verified, 'karma': _karma, 'refercode': _refercode, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField USERNAME = QueryField(fieldName: "username");
  static final QueryField COINS = QueryField(fieldName: "coins");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField SHOWS = QueryField(fieldName: "shows");
  static final QueryField BANNER = QueryField(fieldName: "banner");
  static final QueryField PFP = QueryField(fieldName: "pfp");
  static final QueryField UID = QueryField(fieldName: "uid");
  static final QueryField PHONE = QueryField(fieldName: "phone");
  static final QueryField OYES = QueryField(
    fieldName: "Oyes",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Oye).toString()));
  static final QueryField OWNEDCONTENTS = QueryField(
    fieldName: "OwnedContents",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (OwnedContent).toString()));
  static final QueryField COMMENTMODELS = QueryField(
    fieldName: "CommentModels",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (CommentModel).toString()));
  static final QueryField TOTALLIKES = QueryField(fieldName: "totallikes");
  static final QueryField POSTLIMIT = QueryField(fieldName: "postlimit");
  static final QueryField SUBSCRIBED = QueryField(
    fieldName: "Subscribed",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Subscribe).toString()));
  static final QueryField CREATORACCOUNTID = QueryField(fieldName: "creatoraccountID");
  static final QueryField VERIFIED = QueryField(fieldName: "verified");
  static final QueryField KARMA = QueryField(fieldName: "karma");
  static final QueryField REFERCODE = QueryField(fieldName: "refercode");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Users";
    modelSchemaDefinition.pluralName = "Users";
    
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.USERNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.COINS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.SHOWS,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.BANNER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.PFP,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.UID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.PHONE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.OYES,
      isRequired: false,
      ofModelName: (Oye).toString(),
      associatedKey: Oye.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.OWNEDCONTENTS,
      isRequired: false,
      ofModelName: (OwnedContent).toString(),
      associatedKey: OwnedContent.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.COMMENTMODELS,
      isRequired: false,
      ofModelName: (CommentModel).toString(),
      associatedKey: CommentModel.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.TOTALLIKES,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.POSTLIMIT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Users.SUBSCRIBED,
      isRequired: false,
      ofModelName: (Subscribe).toString(),
      associatedKey: Subscribe.USERSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.CREATORACCOUNTID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.VERIFIED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.KARMA,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.REFERCODE,
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

class _UsersModelType extends ModelType<Users> {
  const _UsersModelType();
  
  @override
  Users fromJson(Map<String, dynamic> jsonData) {
    return Users.fromJson(jsonData);
  }
}