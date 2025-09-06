import 'package:json_annotation/json_annotation.dart';

part 'review_model.g.dart';

@JsonSerializable()
class ReviewModel {
  final String id;
  final String userId;
  final int mediaId; // ID filma ili serije
  final String mediaType; // 'movie' ili 'tv'
  final double rating; // Ocjena od 1 do 10, na primjer
  final String? reviewText;
  final DateTime createdAt;

  ReviewModel({
    required this.id,
    required this.userId,
    required this.mediaId,
    required this.mediaType,
    required this.rating,
    this.reviewText,
    required this.createdAt,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewModelToJson(this);
}