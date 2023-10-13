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


/** This is an auto generated class representing the Oye type in your schema. */
@immutable
class Oye extends Model {
  static const classType = const _OyeModelType();
  final String id;
  final String? _username;
  final int? _shares;
  final String? _pfp;
  final String? _previewimage;
  final TemporalDateTime? _time;
  final String? _videourl;
  final String? _email;
  final String? _caption;
  final String? _usersID;
  final List<CommentModel>? _CommentModels;
  final List<LikesModel>? _LikesModels;
  final String? _bgcolor;
  final String? _song;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get username {
    return _username;
  }
  
  int? get shares {
    return _shares;
  }
  
  String? get pfp {
    return _pfp;
  }
  
  String? get previewimage {
    return _previewimage;
  }
  
  TemporalDateTime? get time {
    return _time;
  }
  
  String? get videourl {
    return _videourl;
  }
  
  String? get email {
    return _email;
  }
  
  String? get caption {
    return _caption;
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
  
  List<CommentModel>? get CommentModels {
    return _CommentModels;
  }
  
  List<LikesModel>? get LikesModels {
    return _LikesModels;
  }
  
  String? get bgcolor {
    return _bgcolor;
  }
  
  String? get song {
    return _song;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Oye._internal({required this.id, username, shares, pfp, previewimage, time, videourl, email, caption, required usersID, CommentModels, LikesModels, bgcolor, song, createdAt, updatedAt}): _username = username, _shares = shares, _pfp = pfp, _previewimage = previewimage, _time = time, _videourl = videourl, _email = email, _caption = caption, _usersID = usersID, _CommentModels = CommentModels, _LikesModels = LikesModels, _bgcolor = bgcolor, _song = song, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Oye({String? id, String? username, int? shares, String? pfp, String? previewimage, TemporalDateTime? time, String? videourl, String? email, String? caption, required String usersID, List<CommentModel>? CommentModels, List<LikesModel>? LikesModels, String? bgcolor, String? song}) {
    return Oye._internal(
      id: id == null ? UUID.getUUID() : id,
      username: username,
      shares: shares,
      pfp: pfp,
      previewimage: previewimage,
      time: time,
      videourl: videourl,
      email: email,
      caption: caption,
      usersID: usersID,
      CommentModels: CommentModels != null ? List<CommentModel>.unmodifiable(CommentModels) : CommentModels,
      LikesModels: LikesModels != null ? List<LikesModel>.unmodifiable(LikesModels) : LikesModels,
      bgcolor: bgcolor,
      song: song);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Oye &&
      id == other.id &&
      _username == other._username &&
      _shares == other._shares &&
      _pfp == other._pfp &&
      _previewimage == other._previewimage &&
      _time == other._time &&
      _videourl == other._videourl &&
      _email == other._email &&
      _caption == other._caption &&
      _usersID == other._usersID &&
      DeepCollectionEquality().equals(_CommentModels, other._CommentModels) &&
      DeepCollectionEquality().equals(_LikesModels, other._LikesModels) &&
      _bgcolor == other._bgcolor &&
      _song == other._song;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Oye {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("username=" + "$_username" + ", ");
    buffer.write("shares=" + (_shares != null ? _shares!.toString() : "null") + ", ");
    buffer.write("pfp=" + "$_pfp" + ", ");
    buffer.write("previewimage=" + "$_previewimage" + ", ");
    buffer.write("time=" + (_time != null ? _time!.format() : "null") + ", ");
    buffer.write("videourl=" + "$_videourl" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("caption=" + "$_caption" + ", ");
    buffer.write("usersID=" + "$_usersID" + ", ");
    buffer.write("bgcolor=" + "$_bgcolor" + ", ");
    buffer.write("song=" + "$_song" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Oye copyWith({String? id, String? username, int? shares, String? pfp, String? previewimage, TemporalDateTime? time, String? videourl, String? email, String? caption, String? usersID, List<CommentModel>? CommentModels, List<LikesModel>? LikesModels, String? bgcolor, String? song}) {
    return Oye._internal(
      id: id ?? this.id,
      username: username ?? this.username,
      shares: shares ?? this.shares,
      pfp: pfp ?? this.pfp,
      previewimage: previewimage ?? this.previewimage,
      time: time ?? this.time,
      videourl: videourl ?? this.videourl,
      email: email ?? this.email,
      caption: caption ?? this.caption,
      usersID: usersID ?? this.usersID,
      CommentModels: CommentModels ?? this.CommentModels,
      LikesModels: LikesModels ?? this.LikesModels,
      bgcolor: bgcolor ?? this.bgcolor,
      song: song ?? this.song);
  }
  
  Oye.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _username = json['username'],
      _shares = (json['shares'] as num?)?.toInt(),
      _pfp = json['pfp'],
      _previewimage = json['previewimage'],
      _time = json['time'] != null ? TemporalDateTime.fromString(json['time']) : null,
      _videourl = json['videourl'],
      _email = json['email'],
      _caption = json['caption'],
      _usersID = json['usersID'],
      _CommentModels = json['CommentModels'] is List
        ? (json['CommentModels'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => CommentModel.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _LikesModels = json['LikesModels'] is List
        ? (json['LikesModels'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => LikesModel.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _bgcolor = json['bgcolor'],
      _song = json['song'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'username': _username, 'shares': _shares, 'pfp': _pfp, 'previewimage': _previewimage, 'time': _time?.format(), 'videourl': _videourl, 'email': _email, 'caption': _caption, 'usersID': _usersID, 'CommentModels': _CommentModels?.map((CommentModel? e) => e?.toJson()).toList(), 'LikesModels': _LikesModels?.map((LikesModel? e) => e?.toJson()).toList(), 'bgcolor': _bgcolor, 'song': _song, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'username': _username, 'shares': _shares, 'pfp': _pfp, 'previewimage': _previewimage, 'time': _time, 'videourl': _videourl, 'email': _email, 'caption': _caption, 'usersID': _usersID, 'CommentModels': _CommentModels, 'LikesModels': _LikesModels, 'bgcolor': _bgcolor, 'song': _song, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField USERNAME = QueryField(fieldName: "username");
  static final QueryField SHARES = QueryField(fieldName: "shares");
  static final QueryField PFP = QueryField(fieldName: "pfp");
  static final QueryField PREVIEWIMAGE = QueryField(fieldName: "previewimage");
  static final QueryField TIME = QueryField(fieldName: "time");
  static final QueryField VIDEOURL = QueryField(fieldName: "videourl");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField CAPTION = QueryField(fieldName: "caption");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
  static final QueryField COMMENTMODELS = QueryField(
    fieldName: "CommentModels",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (CommentModel).toString()));
  static final QueryField LIKESMODELS = QueryField(
    fieldName: "LikesModels",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (LikesModel).toString()));
  static final QueryField BGCOLOR = QueryField(fieldName: "bgcolor");
  static final QueryField SONG = QueryField(fieldName: "song");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Oye";
    modelSchemaDefinition.pluralName = "Oyes";
    
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
      key: Oye.USERNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Oye.SHARES,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Oye.PFP,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Oye.PREVIEWIMAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Oye.TIME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Oye.VIDEOURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Oye.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Oye.CAPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Oye.USERSID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Oye.COMMENTMODELS,
      isRequired: false,
      ofModelName: (CommentModel).toString(),
      associatedKey: CommentModel.OYEID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Oye.LIKESMODELS,
      isRequired: false,
      ofModelName: (LikesModel).toString(),
      associatedKey: LikesModel.OYEID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Oye.BGCOLOR,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Oye.SONG,
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

class _OyeModelType extends ModelType<Oye> {
  const _OyeModelType();
  
  @override
  Oye fromJson(Map<String, dynamic> jsonData) {
    return Oye.fromJson(jsonData);
  }
}