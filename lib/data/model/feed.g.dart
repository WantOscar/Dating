// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedImpl _$$FeedImplFromJson(Map<String, dynamic> json) => _$FeedImpl(
      name: json['name'] as String?,
      residence: json['residence'] as String?,
      age: (json['age'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      profileImage: json['profileImage'] as String?,
      feedImage: json['feedImage'] as String?,
      comment: json['comment'] as String?,
      hashTag: json['hashTag'] as String?,
      commentCnt: (json['commentCnt'] as num?)?.toInt(),
      likeCnt: (json['likeCnt'] as num?)?.toInt(),
      bookmarkCnt: (json['bookmarkCnt'] as num?)?.toInt(),
      updateAt: json['updateAt'] as String?,
    );

Map<String, dynamic> _$$FeedImplToJson(_$FeedImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'residence': instance.residence,
      'age': instance.age,
      'height': instance.height,
      'profileImage': instance.profileImage,
      'feedImage': instance.feedImage,
      'comment': instance.comment,
      'hashTag': instance.hashTag,
      'commentCnt': instance.commentCnt,
      'likeCnt': instance.likeCnt,
      'bookmarkCnt': instance.bookmarkCnt,
      'updateAt': instance.updateAt,
    };
