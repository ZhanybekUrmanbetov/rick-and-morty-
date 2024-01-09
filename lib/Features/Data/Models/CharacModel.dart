import 'package:freezed_annotation/freezed_annotation.dart';

part 'CharacModel.freezed.dart';
part 'CharacModel.g.dart';

@freezed
class CharacModel with _$CharacModel {
  const factory CharacModel({
    required Info info,
    required List<Results> results,
  }) = _CharacModel;

  factory CharacModel.fromJson(Map<String, dynamic> json) =>
      _$CharacModelFromJson(json);
}

@freezed
class Info with _$Info {
  const factory Info({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _Info;
  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    required int id,
    required String name,
    required String status,
    required String species,
    required String gender,
    required String image,
  }) = _Results;
  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
