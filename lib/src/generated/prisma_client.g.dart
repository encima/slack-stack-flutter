// GENERATED CODE - DO NOT MODIFY BY HAND

part of prisma.client;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AggregateAuthor _$AggregateAuthorFromJson(Map<String, dynamic> json) =>
    AggregateAuthor(
      $count: json['_count'] == null
          ? null
          : AuthorCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : AuthorMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : AuthorMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateAuthorToJson(AggregateAuthor instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AuthorGroupByOutputType _$AuthorGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AuthorGroupByOutputType(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String?,
      $count: json['_count'] == null
          ? null
          : AuthorCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : AuthorMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : AuthorMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthorGroupByOutputTypeToJson(
        AuthorGroupByOutputType instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      '_count': instance.$count?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateMessage _$AggregateMessageFromJson(Map<String, dynamic> json) =>
    AggregateMessage(
      $count: json['_count'] == null
          ? null
          : MessageCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : MessageAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : MessageSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : MessageMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : MessageMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateMessageToJson(AggregateMessage instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

MessageGroupByOutputType _$MessageGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    MessageGroupByOutputType(
      id: json['id'] as String,
      type: json['type'] as String,
      text: json['text'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      uri: json['uri'] as String?,
      name: json['name'] as String?,
      size: json['size'] as int?,
      height: json['height'] as String?,
      authorId: json['authorId'] as String,
      $count: json['_count'] == null
          ? null
          : MessageCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : MessageAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : MessageSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : MessageMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : MessageMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MessageGroupByOutputTypeToJson(
        MessageGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'text': instance.text,
      'createdAt': instance.createdAt.toIso8601String(),
      'uri': instance.uri,
      'name': instance.name,
      'size': instance.size,
      'height': instance.height,
      'authorId': instance.authorId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

AuthorCountOutputType _$AuthorCountOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AuthorCountOutputType(
      messages: json['messages'] as int,
    );

Map<String, dynamic> _$AuthorCountOutputTypeToJson(
        AuthorCountOutputType instance) =>
    <String, dynamic>{
      'messages': instance.messages,
    };

AuthorCountAggregateOutputType _$AuthorCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AuthorCountAggregateOutputType(
      firstName: json['firstName'] as int,
      lastName: json['lastName'] as int,
      id: json['id'] as int,
      imageUrl: json['imageUrl'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$AuthorCountAggregateOutputTypeToJson(
        AuthorCountAggregateOutputType instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      '_all': instance.$all,
    };

AuthorMinAggregateOutputType _$AuthorMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AuthorMinAggregateOutputType(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      id: json['id'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$AuthorMinAggregateOutputTypeToJson(
        AuthorMinAggregateOutputType instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
    };

AuthorMaxAggregateOutputType _$AuthorMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AuthorMaxAggregateOutputType(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      id: json['id'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$AuthorMaxAggregateOutputTypeToJson(
        AuthorMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
    };

MessageCountAggregateOutputType _$MessageCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    MessageCountAggregateOutputType(
      id: json['id'] as int,
      type: json['type'] as int,
      text: json['text'] as int,
      createdAt: json['createdAt'] as int,
      uri: json['uri'] as int,
      name: json['name'] as int,
      size: json['size'] as int,
      height: json['height'] as int,
      authorId: json['authorId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$MessageCountAggregateOutputTypeToJson(
        MessageCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'text': instance.text,
      'createdAt': instance.createdAt,
      'uri': instance.uri,
      'name': instance.name,
      'size': instance.size,
      'height': instance.height,
      'authorId': instance.authorId,
      '_all': instance.$all,
    };

MessageAvgAggregateOutputType _$MessageAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    MessageAvgAggregateOutputType(
      size: (json['size'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MessageAvgAggregateOutputTypeToJson(
        MessageAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'size': instance.size,
    };

MessageSumAggregateOutputType _$MessageSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    MessageSumAggregateOutputType(
      size: json['size'] as int?,
    );

Map<String, dynamic> _$MessageSumAggregateOutputTypeToJson(
        MessageSumAggregateOutputType instance) =>
    <String, dynamic>{
      'size': instance.size,
    };

MessageMinAggregateOutputType _$MessageMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    MessageMinAggregateOutputType(
      id: json['id'] as String?,
      type: json['type'] as String?,
      text: json['text'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      uri: json['uri'] as String?,
      name: json['name'] as String?,
      size: json['size'] as int?,
      height: json['height'] as String?,
      authorId: json['authorId'] as String?,
    );

Map<String, dynamic> _$MessageMinAggregateOutputTypeToJson(
        MessageMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'text': instance.text,
      'createdAt': instance.createdAt?.toIso8601String(),
      'uri': instance.uri,
      'name': instance.name,
      'size': instance.size,
      'height': instance.height,
      'authorId': instance.authorId,
    };

MessageMaxAggregateOutputType _$MessageMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    MessageMaxAggregateOutputType(
      id: json['id'] as String?,
      type: json['type'] as String?,
      text: json['text'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      uri: json['uri'] as String?,
      name: json['name'] as String?,
      size: json['size'] as int?,
      height: json['height'] as String?,
      authorId: json['authorId'] as String?,
    );

Map<String, dynamic> _$MessageMaxAggregateOutputTypeToJson(
        MessageMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'text': instance.text,
      'createdAt': instance.createdAt?.toIso8601String(),
      'uri': instance.uri,
      'name': instance.name,
      'size': instance.size,
      'height': instance.height,
      'authorId': instance.authorId,
    };

Author _$AuthorFromJson(Map<String, dynamic> json) => Author(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
    };

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      id: json['id'] as String,
      type: json['type'] as String,
      text: json['text'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      uri: json['uri'] as String?,
      name: json['name'] as String?,
      size: json['size'] as int?,
      height: json['height'] as String?,
      authorId: json['authorId'] as String,
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'text': instance.text,
      'createdAt': instance.createdAt.toIso8601String(),
      'uri': instance.uri,
      'name': instance.name,
      'size': instance.size,
      'height': instance.height,
      'authorId': instance.authorId,
    };
