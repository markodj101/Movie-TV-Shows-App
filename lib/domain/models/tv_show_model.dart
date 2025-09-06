import 'package:json_annotation/json_annotation.dart';

part 'tv_show_model.g.dart';

@JsonSerializable()
class TVShowModel {
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name: 'overview')
  final String overview;
  @JsonKey(name: 'first_air_date')
  final String firstAirDate;
  @JsonKey(name: 'vote_average')
  final double voteAverage;

  TVShowModel({
    required this.id,
    required this.name,
    this.posterPath,
    this.backdropPath,
    required this.overview,
    required this.firstAirDate,
    required this.voteAverage,
  });

  factory TVShowModel.fromJson(Map<String, dynamic> json) => _$TVShowModelFromJson(json);

  Map<String, dynamic> toJson() => _$TVShowModelToJson(this);
}