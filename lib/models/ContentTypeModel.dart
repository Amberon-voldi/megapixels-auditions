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


/** This is an auto generated class representing the ContentTypeModel type in your schema. */
@immutable
class ContentTypeModel {
  final bool? _movie;
  final bool? _shows;
  final bool? _series;

  bool? get movie {
    return _movie;
  }
  
  bool? get shows {
    return _shows;
  }
  
  bool? get series {
    return _series;
  }
  
  const ContentTypeModel._internal({movie, shows, series}): _movie = movie, _shows = shows, _series = series;
  
  factory ContentTypeModel({bool? movie, bool? shows, bool? series}) {
    return ContentTypeModel._internal(
      movie: movie,
      shows: shows,
      series: series);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContentTypeModel &&
      _movie == other._movie &&
      _shows == other._shows &&
      _series == other._series;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ContentTypeModel {");
    buffer.write("movie=" + (_movie != null ? _movie!.toString() : "null") + ", ");
    buffer.write("shows=" + (_shows != null ? _shows!.toString() : "null") + ", ");
    buffer.write("series=" + (_series != null ? _series!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ContentTypeModel copyWith({bool? movie, bool? shows, bool? series}) {
    return ContentTypeModel._internal(
      movie: movie ?? this.movie,
      shows: shows ?? this.shows,
      series: series ?? this.series);
  }
  
  ContentTypeModel.fromJson(Map<String, dynamic> json)  
    : _movie = json['movie'],
      _shows = json['shows'],
      _series = json['series'];
  
  Map<String, dynamic> toJson() => {
    'movie': _movie, 'shows': _shows, 'series': _series
  };
  
  Map<String, Object?> toMap() => {
    'movie': _movie, 'shows': _shows, 'series': _series
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ContentTypeModel";
    modelSchemaDefinition.pluralName = "ContentTypeModels";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'movie',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'shows',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'series',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}