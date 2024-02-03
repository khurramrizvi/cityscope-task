// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artwork_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtWorkList _$ArtWorkListFromJson(Map<String, dynamic> json) => ArtWorkList(
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ArtWorkData.fromJson(e as Map<String, dynamic>))
          .toList(),
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      config: json['config'] == null
          ? null
          : Config.fromJson(json['config'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArtWorkListToJson(ArtWorkList instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
      'info': instance.info,
      'config': instance.config,
    };

Config _$ConfigFromJson(Map<String, dynamic> json) => Config(
      iiifUrl: json['iiifUrl'] as String?,
      websiteUrl: json['websiteUrl'] as String?,
    );

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'iiifUrl': instance.iiifUrl,
      'websiteUrl': instance.websiteUrl,
    };

ArtWorkData _$ArtWorkDataFromJson(Map<String, dynamic> json) => ArtWorkData(
      id: json['id'] as int?,
      apiModel: $enumDecodeNullable(_$ApiModelEnumMap, json['apiModel']),
      apiLink: json['apiLink'] as String?,
      isBoosted: json['isBoosted'] as bool?,
      title: json['title'] as String?,
      altTitles: json['altTitles'],
      thumbnail: json['thumbnail'] == null
          ? null
          : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
      mainReferenceNumber: json['mainReferenceNumber'] as String?,
      hasNotBeenViewedMuch: json['hasNotBeenViewedMuch'] as bool?,
      boostRank: json['boostRank'],
      dateStart: json['dateStart'] as int?,
      dateEnd: json['dateEnd'] as int?,
      dateDisplay: json['dateDisplay'] as String?,
      dateQualifierTitle: json['dateQualifierTitle'] as String?,
      dateQualifierId: json['dateQualifierId'],
      artistDisplay: json['artist_display'] as String?,
      placeOfOrigin: json['placeOfOrigin'] as String?,
      description: json['description'] as String?,
      shortDescription: json['shortDescription'],
      dimensions: json['dimensions'] as String?,
      dimensionsDetail: (json['dimensionsDetail'] as List<dynamic>?)
          ?.map((e) => DimensionsDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      mediumDisplay: json['mediumDisplay'] as String?,
      inscriptions: json['inscriptions'] as String?,
      creditLine: json['creditLine'] as String?,
      catalogueDisplay: json['catalogueDisplay'] as String?,
      publicationHistory: json['publicationHistory'] as String?,
      exhibitionHistory: json['exhibitionHistory'] as String?,
      provenanceText: json['provenanceText'] as String?,
      edition: json['edition'],
      publishingVerificationLevel: $enumDecodeNullable(
          _$PublishingVerificationLevelEnumMap,
          json['publishingVerificationLevel']),
      internalDepartmentId: json['internalDepartmentId'] as int?,
      fiscalYear: json['fiscalYear'] as int?,
      fiscalYearDeaccession: json['fiscalYearDeaccession'],
      isPublicDomain: json['isPublicDomain'] as bool?,
      isZoomable: json['isZoomable'] as bool?,
      maxZoomWindowSize: json['maxZoomWindowSize'] as int?,
      copyrightNotice: json['copyrightNotice'] as String?,
      hasMultimediaResources: json['hasMultimediaResources'] as bool?,
      hasEducationalResources: json['hasEducationalResources'] as bool?,
      hasAdvancedImaging: json['hasAdvancedImaging'] as bool?,
      colorfulness: (json['colorfulness'] as num?)?.toDouble(),
      color: json['color'] == null
          ? null
          : Color.fromJson(json['color'] as Map<String, dynamic>),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      latlon: json['latlon'] as String?,
      isOnView: json['isOnView'] as bool?,
      onLoanDisplay: json['onLoanDisplay'] as String?,
      galleryTitle: json['galleryTitle'],
      galleryId: json['galleryId'],
      nomismaId: json['nomismaId'],
      artworkTypeTitle: json['artwork_type_title'] as String?,
      artworkTypeId: json['artworkTypeId'] as int?,
      departmentTitle: json['departmentTitle'] as String?,
      departmentId: json['departmentId'] as String?,
      artistId: json['artistId'] as int?,
      artistTitle: json['artist_title'] as String?,
      altArtistIds: json['altArtistIds'] as List<dynamic>?,
      artistIds:
          (json['artistIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
      artistTitles: (json['artist_titles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      categoryIds: (json['categoryIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      categoryTitles: (json['categoryTitles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      termTitles: (json['termTitles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      styleId: json['styleId'] as String?,
      styleTitle: json['styleTitle'] as String?,
      altStyleIds: json['altStyleIds'] as List<dynamic>?,
      styleIds: (json['styleIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      styleTitles: (json['styleTitles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      classificationId: json['classificationId'] as String?,
      classificationTitle: json['classificationTitle'] as String?,
      altClassificationIds: (json['altClassificationIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      classificationIds: (json['classificationIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      classificationTitles: (json['classificationTitles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      subjectId: json['subjectId'] as String?,
      altSubjectIds: (json['altSubjectIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      subjectIds: (json['subjectIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      subjectTitles: (json['subjectTitles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      materialId: json['materialId'] as String?,
      altMaterialIds: (json['altMaterialIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      materialIds: (json['materialIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      materialTitles: (json['materialTitles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      techniqueId: json['techniqueId'] as String?,
      altTechniqueIds: (json['altTechniqueIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      techniqueIds: (json['techniqueIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      techniqueTitles: (json['techniqueTitles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      themeTitles: (json['themeTitles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imageId: json['image_id'] as String?,
      altImageIds: json['altImageIds'] as List<dynamic>?,
      documentIds: (json['documentIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      soundIds: (json['soundIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      videoIds: json['videoIds'] as List<dynamic>?,
      textIds: json['textIds'] as List<dynamic>?,
      sectionIds: json['sectionIds'] as List<dynamic>?,
      sectionTitles: json['sectionTitles'] as List<dynamic>?,
      siteIds: json['siteIds'] as List<dynamic>?,
      suggestAutocompleteAll: (json['suggestAutocompleteAll'] as List<dynamic>?)
          ?.map(
              (e) => SuggestAutocompleteAll.fromJson(e as Map<String, dynamic>))
          .toList(),
      sourceUpdatedAt: json['sourceUpdatedAt'] == null
          ? null
          : DateTime.parse(json['sourceUpdatedAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      suggestAutocompleteBoosted: json['suggestAutocompleteBoosted'] as String?,
    );

Map<String, dynamic> _$ArtWorkDataToJson(ArtWorkData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'apiModel': _$ApiModelEnumMap[instance.apiModel],
      'apiLink': instance.apiLink,
      'isBoosted': instance.isBoosted,
      'title': instance.title,
      'altTitles': instance.altTitles,
      'thumbnail': instance.thumbnail,
      'mainReferenceNumber': instance.mainReferenceNumber,
      'hasNotBeenViewedMuch': instance.hasNotBeenViewedMuch,
      'boostRank': instance.boostRank,
      'dateStart': instance.dateStart,
      'dateEnd': instance.dateEnd,
      'dateDisplay': instance.dateDisplay,
      'dateQualifierTitle': instance.dateQualifierTitle,
      'dateQualifierId': instance.dateQualifierId,
      'artist_display': instance.artistDisplay,
      'placeOfOrigin': instance.placeOfOrigin,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'dimensions': instance.dimensions,
      'dimensionsDetail': instance.dimensionsDetail,
      'mediumDisplay': instance.mediumDisplay,
      'inscriptions': instance.inscriptions,
      'creditLine': instance.creditLine,
      'catalogueDisplay': instance.catalogueDisplay,
      'publicationHistory': instance.publicationHistory,
      'exhibitionHistory': instance.exhibitionHistory,
      'provenanceText': instance.provenanceText,
      'edition': instance.edition,
      'publishingVerificationLevel': _$PublishingVerificationLevelEnumMap[
          instance.publishingVerificationLevel],
      'internalDepartmentId': instance.internalDepartmentId,
      'fiscalYear': instance.fiscalYear,
      'fiscalYearDeaccession': instance.fiscalYearDeaccession,
      'isPublicDomain': instance.isPublicDomain,
      'isZoomable': instance.isZoomable,
      'maxZoomWindowSize': instance.maxZoomWindowSize,
      'copyrightNotice': instance.copyrightNotice,
      'hasMultimediaResources': instance.hasMultimediaResources,
      'hasEducationalResources': instance.hasEducationalResources,
      'hasAdvancedImaging': instance.hasAdvancedImaging,
      'colorfulness': instance.colorfulness,
      'color': instance.color,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'latlon': instance.latlon,
      'isOnView': instance.isOnView,
      'onLoanDisplay': instance.onLoanDisplay,
      'galleryTitle': instance.galleryTitle,
      'galleryId': instance.galleryId,
      'nomismaId': instance.nomismaId,
      'artwork_type_title': instance.artworkTypeTitle,
      'artworkTypeId': instance.artworkTypeId,
      'departmentTitle': instance.departmentTitle,
      'departmentId': instance.departmentId,
      'artistId': instance.artistId,
      'artist_title': instance.artistTitle,
      'altArtistIds': instance.altArtistIds,
      'artistIds': instance.artistIds,
      'artist_titles': instance.artistTitles,
      'categoryIds': instance.categoryIds,
      'categoryTitles': instance.categoryTitles,
      'termTitles': instance.termTitles,
      'styleId': instance.styleId,
      'styleTitle': instance.styleTitle,
      'altStyleIds': instance.altStyleIds,
      'styleIds': instance.styleIds,
      'styleTitles': instance.styleTitles,
      'classificationId': instance.classificationId,
      'classificationTitle': instance.classificationTitle,
      'altClassificationIds': instance.altClassificationIds,
      'classificationIds': instance.classificationIds,
      'classificationTitles': instance.classificationTitles,
      'subjectId': instance.subjectId,
      'altSubjectIds': instance.altSubjectIds,
      'subjectIds': instance.subjectIds,
      'subjectTitles': instance.subjectTitles,
      'materialId': instance.materialId,
      'altMaterialIds': instance.altMaterialIds,
      'materialIds': instance.materialIds,
      'materialTitles': instance.materialTitles,
      'techniqueId': instance.techniqueId,
      'altTechniqueIds': instance.altTechniqueIds,
      'techniqueIds': instance.techniqueIds,
      'techniqueTitles': instance.techniqueTitles,
      'themeTitles': instance.themeTitles,
      'image_id': instance.imageId,
      'altImageIds': instance.altImageIds,
      'documentIds': instance.documentIds,
      'soundIds': instance.soundIds,
      'videoIds': instance.videoIds,
      'textIds': instance.textIds,
      'sectionIds': instance.sectionIds,
      'sectionTitles': instance.sectionTitles,
      'siteIds': instance.siteIds,
      'suggestAutocompleteAll': instance.suggestAutocompleteAll,
      'sourceUpdatedAt': instance.sourceUpdatedAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'timestamp': instance.timestamp?.toIso8601String(),
      'suggestAutocompleteBoosted': instance.suggestAutocompleteBoosted,
    };

const _$ApiModelEnumMap = {
  ApiModel.ARTWORKS: 'ARTWORKS',
};

const _$PublishingVerificationLevelEnumMap = {
  PublishingVerificationLevel.WEB_BASIC: 'WEB_BASIC',
  PublishingVerificationLevel.WEB_CATALOGED: 'WEB_CATALOGED',
};

Color _$ColorFromJson(Map<String, dynamic> json) => Color(
      h: json['h'] as int?,
      l: json['l'] as int?,
      s: json['s'] as int?,
      percentage: (json['percentage'] as num?)?.toDouble(),
      population: json['population'] as int?,
    );

Map<String, dynamic> _$ColorToJson(Color instance) => <String, dynamic>{
      'h': instance.h,
      'l': instance.l,
      's': instance.s,
      'percentage': instance.percentage,
      'population': instance.population,
    };

DimensionsDetail _$DimensionsDetailFromJson(Map<String, dynamic> json) =>
    DimensionsDetail(
      depth: json['depth'] as int?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      diameter: json['diameter'],
      clarification: json['clarification'] as String?,
    );

Map<String, dynamic> _$DimensionsDetailToJson(DimensionsDetail instance) =>
    <String, dynamic>{
      'depth': instance.depth,
      'width': instance.width,
      'height': instance.height,
      'diameter': instance.diameter,
      'clarification': instance.clarification,
    };

SuggestAutocompleteAll _$SuggestAutocompleteAllFromJson(
        Map<String, dynamic> json) =>
    SuggestAutocompleteAll(
      input:
          (json['input'] as List<dynamic>?)?.map((e) => e as String).toList(),
      contexts: json['contexts'] == null
          ? null
          : Contexts.fromJson(json['contexts'] as Map<String, dynamic>),
      weight: json['weight'] as int?,
    );

Map<String, dynamic> _$SuggestAutocompleteAllToJson(
        SuggestAutocompleteAll instance) =>
    <String, dynamic>{
      'input': instance.input,
      'contexts': instance.contexts,
      'weight': instance.weight,
    };

Contexts _$ContextsFromJson(Map<String, dynamic> json) => Contexts(
      groupings: (json['groupings'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$GroupingEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$ContextsToJson(Contexts instance) => <String, dynamic>{
      'groupings':
          instance.groupings?.map((e) => _$GroupingEnumMap[e]!).toList(),
    };

const _$GroupingEnumMap = {
  Grouping.ACCESSION: 'ACCESSION',
  Grouping.TITLE: 'TITLE',
};

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) => Thumbnail(
      lqip: json['lqip'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      altText: json['altText'] as String?,
    );

Map<String, dynamic> _$ThumbnailToJson(Thumbnail instance) => <String, dynamic>{
      'lqip': instance.lqip,
      'width': instance.width,
      'height': instance.height,
      'altText': instance.altText,
    };

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      licenseText: json['licenseText'] as String?,
      licenseLinks: (json['licenseLinks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'licenseText': instance.licenseText,
      'licenseLinks': instance.licenseLinks,
      'version': instance.version,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      total: json['total'] as int?,
      limit: json['limit'] as int?,
      offset: json['offset'] as int?,
      totalPages: json['totalPages'] as int?,
      currentPage: json['currentPage'] as int?,
      nextUrl: json['nextUrl'] as String?,
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'offset': instance.offset,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'nextUrl': instance.nextUrl,
    };
