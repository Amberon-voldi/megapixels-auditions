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


/** This is an auto generated class representing the GenreModel type in your schema. */
@immutable
class GenreModel {
  final bool? _megapixelsOrignal;
  final bool? _eighteenPlus;
  final bool? _comdey;
  final bool? _bollywood;
  final bool? _hollywood;
  final bool? _action;
  final bool? _horror;
  final bool? _kids;
  final bool? _devotional;
  final bool? _bhojpuri;
  final bool? _regional;
  final bool? _documentary;
  final bool? _poetry;
  final bool? _political;
  final bool? _motivation;
  final bool? _drama;
  final bool? _tvshows;
  final bool? _romance;

  bool? get megapixelsOrignal {
    return _megapixelsOrignal;
  }
  
  bool? get eighteenPlus {
    return _eighteenPlus;
  }
  
  bool? get comdey {
    return _comdey;
  }
  
  bool? get bollywood {
    return _bollywood;
  }
  
  bool? get hollywood {
    return _hollywood;
  }
  
  bool? get action {
    return _action;
  }
  
  bool? get horror {
    return _horror;
  }
  
  bool? get kids {
    return _kids;
  }
  
  bool? get devotional {
    return _devotional;
  }
  
  bool? get bhojpuri {
    return _bhojpuri;
  }
  
  bool? get regional {
    return _regional;
  }
  
  bool? get documentary {
    return _documentary;
  }
  
  bool? get poetry {
    return _poetry;
  }
  
  bool? get political {
    return _political;
  }
  
  bool? get motivation {
    return _motivation;
  }
  
  bool? get drama {
    return _drama;
  }
  
  bool? get tvshows {
    return _tvshows;
  }
  
  bool? get romance {
    return _romance;
  }
  
  const GenreModel._internal({megapixelsOrignal, eighteenPlus, comdey, bollywood, hollywood, action, horror, kids, devotional, bhojpuri, regional, documentary, poetry, political, motivation, drama, tvshows, romance}): _megapixelsOrignal = megapixelsOrignal, _eighteenPlus = eighteenPlus, _comdey = comdey, _bollywood = bollywood, _hollywood = hollywood, _action = action, _horror = horror, _kids = kids, _devotional = devotional, _bhojpuri = bhojpuri, _regional = regional, _documentary = documentary, _poetry = poetry, _political = political, _motivation = motivation, _drama = drama, _tvshows = tvshows, _romance = romance;
  
  factory GenreModel({bool? megapixelsOrignal, bool? eighteenPlus, bool? comdey, bool? bollywood, bool? hollywood, bool? action, bool? horror, bool? kids, bool? devotional, bool? bhojpuri, bool? regional, bool? documentary, bool? poetry, bool? political, bool? motivation, bool? drama, bool? tvshows, bool? romance}) {
    return GenreModel._internal(
      megapixelsOrignal: megapixelsOrignal,
      eighteenPlus: eighteenPlus,
      comdey: comdey,
      bollywood: bollywood,
      hollywood: hollywood,
      action: action,
      horror: horror,
      kids: kids,
      devotional: devotional,
      bhojpuri: bhojpuri,
      regional: regional,
      documentary: documentary,
      poetry: poetry,
      political: political,
      motivation: motivation,
      drama: drama,
      tvshows: tvshows,
      romance: romance);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenreModel &&
      _megapixelsOrignal == other._megapixelsOrignal &&
      _eighteenPlus == other._eighteenPlus &&
      _comdey == other._comdey &&
      _bollywood == other._bollywood &&
      _hollywood == other._hollywood &&
      _action == other._action &&
      _horror == other._horror &&
      _kids == other._kids &&
      _devotional == other._devotional &&
      _bhojpuri == other._bhojpuri &&
      _regional == other._regional &&
      _documentary == other._documentary &&
      _poetry == other._poetry &&
      _political == other._political &&
      _motivation == other._motivation &&
      _drama == other._drama &&
      _tvshows == other._tvshows &&
      _romance == other._romance;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("GenreModel {");
    buffer.write("megapixelsOrignal=" + (_megapixelsOrignal != null ? _megapixelsOrignal!.toString() : "null") + ", ");
    buffer.write("eighteenPlus=" + (_eighteenPlus != null ? _eighteenPlus!.toString() : "null") + ", ");
    buffer.write("comdey=" + (_comdey != null ? _comdey!.toString() : "null") + ", ");
    buffer.write("bollywood=" + (_bollywood != null ? _bollywood!.toString() : "null") + ", ");
    buffer.write("hollywood=" + (_hollywood != null ? _hollywood!.toString() : "null") + ", ");
    buffer.write("action=" + (_action != null ? _action!.toString() : "null") + ", ");
    buffer.write("horror=" + (_horror != null ? _horror!.toString() : "null") + ", ");
    buffer.write("kids=" + (_kids != null ? _kids!.toString() : "null") + ", ");
    buffer.write("devotional=" + (_devotional != null ? _devotional!.toString() : "null") + ", ");
    buffer.write("bhojpuri=" + (_bhojpuri != null ? _bhojpuri!.toString() : "null") + ", ");
    buffer.write("regional=" + (_regional != null ? _regional!.toString() : "null") + ", ");
    buffer.write("documentary=" + (_documentary != null ? _documentary!.toString() : "null") + ", ");
    buffer.write("poetry=" + (_poetry != null ? _poetry!.toString() : "null") + ", ");
    buffer.write("political=" + (_political != null ? _political!.toString() : "null") + ", ");
    buffer.write("motivation=" + (_motivation != null ? _motivation!.toString() : "null") + ", ");
    buffer.write("drama=" + (_drama != null ? _drama!.toString() : "null") + ", ");
    buffer.write("tvshows=" + (_tvshows != null ? _tvshows!.toString() : "null") + ", ");
    buffer.write("romance=" + (_romance != null ? _romance!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  GenreModel copyWith({bool? megapixelsOrignal, bool? eighteenPlus, bool? comdey, bool? bollywood, bool? hollywood, bool? action, bool? horror, bool? kids, bool? devotional, bool? bhojpuri, bool? regional, bool? documentary, bool? poetry, bool? political, bool? motivation, bool? drama, bool? tvshows, bool? romance}) {
    return GenreModel._internal(
      megapixelsOrignal: megapixelsOrignal ?? this.megapixelsOrignal,
      eighteenPlus: eighteenPlus ?? this.eighteenPlus,
      comdey: comdey ?? this.comdey,
      bollywood: bollywood ?? this.bollywood,
      hollywood: hollywood ?? this.hollywood,
      action: action ?? this.action,
      horror: horror ?? this.horror,
      kids: kids ?? this.kids,
      devotional: devotional ?? this.devotional,
      bhojpuri: bhojpuri ?? this.bhojpuri,
      regional: regional ?? this.regional,
      documentary: documentary ?? this.documentary,
      poetry: poetry ?? this.poetry,
      political: political ?? this.political,
      motivation: motivation ?? this.motivation,
      drama: drama ?? this.drama,
      tvshows: tvshows ?? this.tvshows,
      romance: romance ?? this.romance);
  }
  
  GenreModel.fromJson(Map<String, dynamic> json)  
    : _megapixelsOrignal = json['megapixelsOrignal'],
      _eighteenPlus = json['eighteenPlus'],
      _comdey = json['comdey'],
      _bollywood = json['bollywood'],
      _hollywood = json['hollywood'],
      _action = json['action'],
      _horror = json['horror'],
      _kids = json['kids'],
      _devotional = json['devotional'],
      _bhojpuri = json['bhojpuri'],
      _regional = json['regional'],
      _documentary = json['documentary'],
      _poetry = json['poetry'],
      _political = json['political'],
      _motivation = json['motivation'],
      _drama = json['drama'],
      _tvshows = json['tvshows'],
      _romance = json['romance'];
  
  Map<String, dynamic> toJson() => {
    'megapixelsOrignal': _megapixelsOrignal, 'eighteenPlus': _eighteenPlus, 'comdey': _comdey, 'bollywood': _bollywood, 'hollywood': _hollywood, 'action': _action, 'horror': _horror, 'kids': _kids, 'devotional': _devotional, 'bhojpuri': _bhojpuri, 'regional': _regional, 'documentary': _documentary, 'poetry': _poetry, 'political': _political, 'motivation': _motivation, 'drama': _drama, 'tvshows': _tvshows, 'romance': _romance
  };
  
  Map<String, Object?> toMap() => {
    'megapixelsOrignal': _megapixelsOrignal, 'eighteenPlus': _eighteenPlus, 'comdey': _comdey, 'bollywood': _bollywood, 'hollywood': _hollywood, 'action': _action, 'horror': _horror, 'kids': _kids, 'devotional': _devotional, 'bhojpuri': _bhojpuri, 'regional': _regional, 'documentary': _documentary, 'poetry': _poetry, 'political': _political, 'motivation': _motivation, 'drama': _drama, 'tvshows': _tvshows, 'romance': _romance
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "GenreModel";
    modelSchemaDefinition.pluralName = "GenreModels";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'megapixelsOrignal',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'eighteenPlus',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'comdey',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'bollywood',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'hollywood',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'action',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'horror',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'kids',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'devotional',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'bhojpuri',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'regional',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'documentary',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'poetry',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'political',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'motivation',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'drama',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'tvshows',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'romance',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}