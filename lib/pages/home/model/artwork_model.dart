import 'package:json_annotation/json_annotation.dart';
part 'artwork_model.g.dart';

@JsonSerializable()
class ArtWorkList {
  Pagination? pagination;
  List<ArtWorkData>? data;
  Info? info;
  Config? config;

  ArtWorkList({
    this.pagination,
    this.data,
    this.info,
    this.config,
  });

  factory ArtWorkList.fromJson(Map<String, dynamic> json) =>
      _$ArtWorkListFromJson(json);
}

@JsonSerializable()
class Config {
  String? iiifUrl;
  String? websiteUrl;

  Config({
    this.iiifUrl,
    this.websiteUrl,
  });

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
}

@JsonSerializable()
class ArtWorkData {
  int? id;
  ApiModel? apiModel;
  String? apiLink;
  bool? isBoosted;
  String? title;
  dynamic altTitles;
  Thumbnail? thumbnail;
  String? mainReferenceNumber;
  bool? hasNotBeenViewedMuch;
  dynamic boostRank;
  int? dateStart;
  int? dateEnd;
  String? dateDisplay;
  String? dateQualifierTitle;
  dynamic dateQualifierId;
  @JsonKey(name: 'artist_display')
  String? artistDisplay;
  String? placeOfOrigin;
  String? description;
  dynamic shortDescription;
  String? dimensions;
  List<DimensionsDetail>? dimensionsDetail;
  String? mediumDisplay;
  String? inscriptions;
  String? creditLine;
  String? catalogueDisplay;
  String? publicationHistory;
  String? exhibitionHistory;
  String? provenanceText;
  dynamic edition;
  PublishingVerificationLevel? publishingVerificationLevel;
  int? internalDepartmentId;
  int? fiscalYear;
  dynamic fiscalYearDeaccession;
  bool? isPublicDomain;
  bool? isZoomable;
  int? maxZoomWindowSize;
  String? copyrightNotice;
  bool? hasMultimediaResources;
  bool? hasEducationalResources;
  bool? hasAdvancedImaging;
  double? colorfulness;
  Color? color;
  double? latitude;
  double? longitude;
  String? latlon;
  bool? isOnView;
  String? onLoanDisplay;
  dynamic galleryTitle;
  dynamic galleryId;
  dynamic nomismaId;
  @JsonKey(name: 'artwork_type_title')
  String? artworkTypeTitle;
  int? artworkTypeId;
  String? departmentTitle;
  String? departmentId;
  int? artistId;
  @JsonKey(name: 'artist_title')
  String? artistTitle;
  List<dynamic>? altArtistIds;
  List<int>? artistIds;
  @JsonKey(name: 'artist_titles')
  List<String>? artistTitles;
  List<String>? categoryIds;
  List<String>? categoryTitles;
  List<String>? termTitles;
  String? styleId;
  String? styleTitle;
  List<dynamic>? altStyleIds;
  List<String>? styleIds;
  List<String>? styleTitles;
  String? classificationId;
  String? classificationTitle;
  List<String>? altClassificationIds;
  List<String>? classificationIds;
  List<String>? classificationTitles;
  String? subjectId;
  List<String>? altSubjectIds;
  List<String>? subjectIds;
  List<String>? subjectTitles;
  String? materialId;
  List<String>? altMaterialIds;
  List<String>? materialIds;
  List<String>? materialTitles;
  String? techniqueId;
  List<String>? altTechniqueIds;
  List<String>? techniqueIds;
  List<String>? techniqueTitles;
  List<String>? themeTitles;
  @JsonKey(name: 'image_id')
  String? imageId;
  List<dynamic>? altImageIds;
  List<String>? documentIds;
  List<String>? soundIds;
  List<dynamic>? videoIds;
  List<dynamic>? textIds;
  List<dynamic>? sectionIds;
  List<dynamic>? sectionTitles;
  List<dynamic>? siteIds;
  List<SuggestAutocompleteAll>? suggestAutocompleteAll;
  DateTime? sourceUpdatedAt;
  DateTime? updatedAt;
  DateTime? timestamp;
  String? suggestAutocompleteBoosted;

  ArtWorkData({
    this.id,
    this.apiModel,
    this.apiLink,
    this.isBoosted,
    this.title,
    this.altTitles,
    this.thumbnail,
    this.mainReferenceNumber,
    this.hasNotBeenViewedMuch,
    this.boostRank,
    this.dateStart,
    this.dateEnd,
    this.dateDisplay,
    this.dateQualifierTitle,
    this.dateQualifierId,
    this.artistDisplay,
    this.placeOfOrigin,
    this.description,
    this.shortDescription,
    this.dimensions,
    this.dimensionsDetail,
    this.mediumDisplay,
    this.inscriptions,
    this.creditLine,
    this.catalogueDisplay,
    this.publicationHistory,
    this.exhibitionHistory,
    this.provenanceText,
    this.edition,
    this.publishingVerificationLevel,
    this.internalDepartmentId,
    this.fiscalYear,
    this.fiscalYearDeaccession,
    this.isPublicDomain,
    this.isZoomable,
    this.maxZoomWindowSize,
    this.copyrightNotice,
    this.hasMultimediaResources,
    this.hasEducationalResources,
    this.hasAdvancedImaging,
    this.colorfulness,
    this.color,
    this.latitude,
    this.longitude,
    this.latlon,
    this.isOnView,
    this.onLoanDisplay,
    this.galleryTitle,
    this.galleryId,
    this.nomismaId,
    this.artworkTypeTitle,
    this.artworkTypeId,
    this.departmentTitle,
    this.departmentId,
    this.artistId,
    this.artistTitle,
    this.altArtistIds,
    this.artistIds,
    this.artistTitles,
    this.categoryIds,
    this.categoryTitles,
    this.termTitles,
    this.styleId,
    this.styleTitle,
    this.altStyleIds,
    this.styleIds,
    this.styleTitles,
    this.classificationId,
    this.classificationTitle,
    this.altClassificationIds,
    this.classificationIds,
    this.classificationTitles,
    this.subjectId,
    this.altSubjectIds,
    this.subjectIds,
    this.subjectTitles,
    this.materialId,
    this.altMaterialIds,
    this.materialIds,
    this.materialTitles,
    this.techniqueId,
    this.altTechniqueIds,
    this.techniqueIds,
    this.techniqueTitles,
    this.themeTitles,
    this.imageId,
    this.altImageIds,
    this.documentIds,
    this.soundIds,
    this.videoIds,
    this.textIds,
    this.sectionIds,
    this.sectionTitles,
    this.siteIds,
    this.suggestAutocompleteAll,
    this.sourceUpdatedAt,
    this.updatedAt,
    this.timestamp,
    this.suggestAutocompleteBoosted,
  });

  factory ArtWorkData.fromJson(Map<String, dynamic> json) =>
      _$ArtWorkDataFromJson(json);
}

enum ApiModel { ARTWORKS }

@JsonSerializable()
class Color {
  int? h;
  int? l;
  int? s;
  double? percentage;
  int? population;

  Color({
    this.h,
    this.l,
    this.s,
    this.percentage,
    this.population,
  });

  factory Color.fromJson(Map<String, dynamic> json) => _$ColorFromJson(json);
}

@JsonSerializable()
class DimensionsDetail {
  int? depth;
  int? width;
  int? height;
  dynamic diameter;
  String? clarification;

  DimensionsDetail({
    this.depth,
    this.width,
    this.height,
    this.diameter,
    this.clarification,
  });

  factory DimensionsDetail.fromJson(Map<String, dynamic> json) =>
      _$DimensionsDetailFromJson(json);
}

enum PublishingVerificationLevel { WEB_BASIC, WEB_CATALOGED }

@JsonSerializable()
class SuggestAutocompleteAll {
  List<String>? input;
  Contexts? contexts;
  int? weight;

  SuggestAutocompleteAll({
    this.input,
    this.contexts,
    this.weight,
  });

  factory SuggestAutocompleteAll.fromJson(Map<String, dynamic> json) =>
      _$SuggestAutocompleteAllFromJson(json);
}

@JsonSerializable()
class Contexts {
  List<Grouping>? groupings;

  Contexts({
    this.groupings,
  });

  factory Contexts.fromJson(Map<String, dynamic> json) =>
      _$ContextsFromJson(json);
}

enum Grouping { ACCESSION, TITLE }

@JsonSerializable()
class Thumbnail {
  String? lqip;
  int? width;
  int? height;
  String? altText;

  Thumbnail({
    this.lqip,
    this.width,
    this.height,
    this.altText,
  });

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);
}

@JsonSerializable()
class Info {
  String? licenseText;
  List<String>? licenseLinks;
  String? version;

  Info({
    this.licenseText,
    this.licenseLinks,
    this.version,
  });

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@JsonSerializable()
class Pagination {
  int? total;
  int? limit;
  int? offset;
  int? totalPages;
  int? currentPage;
  String? nextUrl;

  Pagination({
    this.total,
    this.limit,
    this.offset,
    this.totalPages,
    this.currentPage,
    this.nextUrl,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
