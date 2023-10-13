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
import 'Audition.dart';
import 'CommentModel.dart';
import 'Content.dart';
import 'CreatorAccount.dart';
import 'Episode.dart';
import 'Follow.dart';
import 'LikesModel.dart';
import 'NotificationModel.dart';
import 'OwnedContent.dart';
import 'Oye.dart';
import 'QueryForm.dart';
import 'Sliders.dart';
import 'Subscribe.dart';
import 'Upcoming.dart';
import 'Users.dart';
import 'ContentTypeModel.dart';
import 'GenreModel.dart';
import 'SliderOtpModel.dart';

export 'Audition.dart';
export 'CommentModel.dart';
export 'Content.dart';
export 'ContentTypeModel.dart';
export 'CreatorAccount.dart';
export 'Episode.dart';
export 'Follow.dart';
export 'GenreModel.dart';
export 'LikesModel.dart';
export 'NotificationModel.dart';
export 'OwnedContent.dart';
export 'Oye.dart';
export 'QueryForm.dart';
export 'SliderOtpModel.dart';
export 'Sliders.dart';
export 'Subscribe.dart';
export 'Upcoming.dart';
export 'Users.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "38c67832eedfbf5bc73825ddd2f30bff";
  @override
  List<ModelSchema> modelSchemas = [Audition.schema, CommentModel.schema, Content.schema, CreatorAccount.schema, Episode.schema, Follow.schema, LikesModel.schema, NotificationModel.schema, OwnedContent.schema, Oye.schema, QueryForm.schema, Sliders.schema, Subscribe.schema, Upcoming.schema, Users.schema];
  static final ModelProvider _instance = ModelProvider();
  @override
  List<ModelSchema> customTypeSchemas = [ContentTypeModel.schema, GenreModel.schema, SliderOtpModel.schema];

  static ModelProvider get instance => _instance;
  
  ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
      case "Audition":
        return Audition.classType;
      case "CommentModel":
        return CommentModel.classType;
      case "Content":
        return Content.classType;
      case "CreatorAccount":
        return CreatorAccount.classType;
      case "Episode":
        return Episode.classType;
      case "Follow":
        return Follow.classType;
      case "LikesModel":
        return LikesModel.classType;
      case "NotificationModel":
        return NotificationModel.classType;
      case "OwnedContent":
        return OwnedContent.classType;
      case "Oye":
        return Oye.classType;
      case "QueryForm":
        return QueryForm.classType;
      case "Sliders":
        return Sliders.classType;
      case "Subscribe":
        return Subscribe.classType;
      case "Upcoming":
        return Upcoming.classType;
      case "Users":
        return Users.classType;
      default:
        throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
  }
}