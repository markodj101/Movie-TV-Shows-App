import 'package:json_annotation/json_annotation.dart';
import 'movie_model.dart';
import 'tv_show_model.dart';

part 'watchlist_model.g.dart';

@JsonSerializable(explicitToJson: true)
class WatchlistModel {
  final String id;
  final String userId;
  final List<MovieModel> movies;
  final List<TVShowModel> tvShows;
  final DateTime lastUpdated;

  WatchlistModel({
    required this.id,
    required this.userId,
    required this.movies,
    required this.tvShows,
    required this.lastUpdated,
  });

  factory WatchlistModel.fromJson(Map<String, dynamic> json) => _$WatchlistModelFromJson(json);

  Map<String, dynamic> toJson() => _$WatchlistModelToJson(this);
}