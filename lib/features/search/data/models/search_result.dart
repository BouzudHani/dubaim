class SearchResult {
  List<Event>? events;
  Meta? meta;

  SearchResult({
    this.events,
    this.meta,
  });

  factory SearchResult.fromJson(Map<String, dynamic> json) => SearchResult(
    events: json["events"] == null ? [] : List<Event>.from(json["events"]!.map((x) => Event.fromJson(x))),
    meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
  );

  Map<String, dynamic> toJson() => {
    "events": events == null ? [] : List<dynamic>.from(events!.map((x) => x.toJson())),
    "meta": meta?.toJson(),
  };
}

class Event {
  AccessMethod? accessMethod;
  DateTime? announceDate;
  Announcements? announcements;
  bool? conditional;
  bool? contingent;
  DateTime? createdAt;
  bool? dateTbd;
  DateTime? datetimeLocal;
  bool? datetimeTbd;
  DateTime? datetimeUtc;
  String? description;
  DateTime? enddatetimeUtc;
  EventPromotion? eventPromotion;
  int? gameNumber;
  int? homeGameNumber;
  int? id;
  Integrated? integrated;
  bool? isOpen;
  bool? isVisible;
  String? isVisibleOverride;
  List<dynamic>? links;
  List<Performer>? performers;
  List<PerformerOrder>? performerOrder;
  dynamic playoffs;
  double? popularity;
  double? score;
  String? shortTitle;
  Announcements? stats;
  String? status;
  List<Taxonomy>? taxonomies;
  int? tdcPvId;
  int? tdcPvoId;
  bool? timeTbd;
  String? title;
  String? url;
  Venue? venue;
  dynamic visibleAt;
  DateTime? visibleUntilUtc;
  String? openDomainId;
  String? openId;
  String? type;
  List<dynamic>? themes;
  List<dynamic>? domainInformation;

  Event({
    this.accessMethod,
    this.announceDate,
    this.announcements,
    this.conditional,
    this.contingent,
    this.createdAt,
    this.dateTbd,
    this.datetimeLocal,
    this.datetimeTbd,
    this.datetimeUtc,
    this.description,
    this.enddatetimeUtc,
    this.eventPromotion,
    this.gameNumber,
    this.homeGameNumber,
    this.id,
    this.integrated,
    this.isOpen,
    this.isVisible,
    this.isVisibleOverride,
    this.links,
    this.performers,
    this.performerOrder,
    this.playoffs,
    this.popularity,
    this.score,
    this.shortTitle,
    this.stats,
    this.status,
    this.taxonomies,
    this.tdcPvId,
    this.tdcPvoId,
    this.timeTbd,
    this.title,
    this.url,
    this.venue,
    this.visibleAt,
    this.visibleUntilUtc,
    this.openDomainId,
    this.openId,
    this.type,
    this.themes,
    this.domainInformation,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
    accessMethod: json["access_method"] == null ? null : AccessMethod.fromJson(json["access_method"]),
    announceDate: json["announce_date"] == null ? null : DateTime.parse(json["announce_date"]),
    announcements: json["announcements"] == null ? null : Announcements.fromJson(json["announcements"]),
    conditional: json["conditional"],
    contingent: json["contingent"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    dateTbd: json["date_tbd"],
    datetimeLocal: json["datetime_local"] == null ? null : DateTime.parse(json["datetime_local"]),
    datetimeTbd: json["datetime_tbd"],
    datetimeUtc: json["datetime_utc"] == null ? null : DateTime.parse(json["datetime_utc"]),
    description: json["description"],
    enddatetimeUtc: json["enddatetime_utc"] == null ? null : DateTime.parse(json["enddatetime_utc"]),
    eventPromotion: json["event_promotion"] == null ? null : EventPromotion.fromJson(json["event_promotion"]),
    gameNumber: json["game_number"],
    homeGameNumber: json["home_game_number"],
    id: json["id"],
    integrated: json["integrated"] == null ? null : Integrated.fromJson(json["integrated"]),
    isOpen: json["is_open"],
    isVisible: json["is_visible"],
    isVisibleOverride: json["is_visible_override"],
    links: json["links"] == null ? [] : List<dynamic>.from(json["links"]!.map((x) => x)),
    performers: json["performers"] == null ? [] : List<Performer>.from(json["performers"]!.map((x) => Performer.fromJson(x))),
    performerOrder: json["performer_order"] == null ? [] : List<PerformerOrder>.from(json["performer_order"]!.map((x) => PerformerOrder.fromJson(x))),
    playoffs: json["playoffs"],
    popularity: json["popularity"]?.toDouble(),
    score: json["score"]?.toDouble(),
    shortTitle: json["short_title"],
    stats: json["stats"] == null ? null : Announcements.fromJson(json["stats"]),
    status: json["status"],
    taxonomies: json["taxonomies"] == null ? [] : List<Taxonomy>.from(json["taxonomies"]!.map((x) => Taxonomy.fromJson(x))),
    tdcPvId: json["tdc_pv_id"],
    tdcPvoId: json["tdc_pvo_id"],
    timeTbd: json["time_tbd"],
    title: json["title"],
    url: json["url"],
    venue: json["venue"] == null ? null : Venue.fromJson(json["venue"]),
    visibleAt: json["visible_at"],
    visibleUntilUtc: json["visible_until_utc"] == null ? null : DateTime.parse(json["visible_until_utc"]),
    openDomainId: json["open_domain_id"],
    openId: json["open_id"],
    type: json["type"],
    themes: json["themes"] == null ? [] : List<dynamic>.from(json["themes"]!.map((x) => x)),
    domainInformation: json["domain_information"] == null ? [] : List<dynamic>.from(json["domain_information"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "access_method": accessMethod?.toJson(),
    "announce_date": announceDate?.toIso8601String(),
    "announcements": announcements?.toJson(),
    "conditional": conditional,
    "contingent": contingent,
    "created_at": createdAt?.toIso8601String(),
    "date_tbd": dateTbd,
    "datetime_local": datetimeLocal?.toIso8601String(),
    "datetime_tbd": datetimeTbd,
    "datetime_utc": datetimeUtc?.toIso8601String(),
    "description": description,
    "enddatetime_utc": enddatetimeUtc?.toIso8601String(),
    "event_promotion": eventPromotion?.toJson(),
    "game_number": gameNumber,
    "home_game_number": homeGameNumber,
    "id": id,
    "integrated": integrated?.toJson(),
    "is_open": isOpen,
    "is_visible": isVisible,
    "is_visible_override": isVisibleOverride,
    "links": links == null ? [] : List<dynamic>.from(links!.map((x) => x)),
    "performers": performers == null ? [] : List<dynamic>.from(performers!.map((x) => x.toJson())),
    "performer_order": performerOrder == null ? [] : List<dynamic>.from(performerOrder!.map((x) => x.toJson())),
    "playoffs": playoffs,
    "popularity": popularity,
    "score": score,
    "short_title": shortTitle,
    "stats": stats?.toJson(),
    "status": status,
    "taxonomies": taxonomies == null ? [] : List<dynamic>.from(taxonomies!.map((x) => x.toJson())),
    "tdc_pv_id": tdcPvId,
    "tdc_pvo_id": tdcPvoId,
    "time_tbd": timeTbd,
    "title": title,
    "url": url,
    "venue": venue?.toJson(),
    "visible_at": visibleAt,
    "visible_until_utc": visibleUntilUtc?.toIso8601String(),
    "open_domain_id": openDomainId,
    "open_id": openId,
    "type": type,
    "themes": themes == null ? [] : List<dynamic>.from(themes!.map((x) => x)),
    "domain_information": domainInformation == null ? [] : List<dynamic>.from(domainInformation!.map((x) => x)),
  };
}

class AccessMethod {
  String? method;
  DateTime? createdAt;
  bool? employeeOnly;
  dynamic barcodeVisibilityOffsetInHours;

  AccessMethod({
    this.method,
    this.createdAt,
    this.employeeOnly,
    this.barcodeVisibilityOffsetInHours,
  });

  factory AccessMethod.fromJson(Map<String, dynamic> json) => AccessMethod(
    method: json["method"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    employeeOnly: json["employee_only"],
    barcodeVisibilityOffsetInHours: json["barcode_visibility_offset_in_hours"],
  );

  Map<String, dynamic> toJson() => {
    "method": method,
    "created_at": createdAt?.toIso8601String(),
    "employee_only": employeeOnly,
    "barcode_visibility_offset_in_hours": barcodeVisibilityOffsetInHours,
  };
}

class Announcements {
  Announcements();

  factory Announcements.fromJson(Map<String, dynamic> json) => Announcements(
  );

  Map<String, dynamic> toJson() => {
  };
}

class EventPromotion {
  String? headline;
  String? additionalInfo;
  EventPromotionImages? images;

  EventPromotion({
    this.headline,
    this.additionalInfo,
    this.images,
  });

  factory EventPromotion.fromJson(Map<String, dynamic> json) => EventPromotion(
    headline: json["headline"],
    additionalInfo: json["additional_info"],
    images: json["images"] == null ? null : EventPromotionImages.fromJson(json["images"]),
  );

  Map<String, dynamic> toJson() => {
    "headline": headline,
    "additional_info": additionalInfo,
    "images": images?.toJson(),
  };
}

class EventPromotionImages {
  String? icon;
  String? png2X;
  String? png3X;

  EventPromotionImages({
    this.icon,
    this.png2X,
    this.png3X,
  });

  factory EventPromotionImages.fromJson(Map<String, dynamic> json) => EventPromotionImages(
    icon: json["icon"],
    png2X: json["png@2x"],
    png3X: json["png@3x"],
  );

  Map<String, dynamic> toJson() => {
    "icon": icon,
    "png@2x": png2X,
    "png@3x": png3X,
  };
}

class Integrated {
  String? providerName;
  String? providerId;

  Integrated({
    this.providerName,
    this.providerId,
  });

  factory Integrated.fromJson(Map<String, dynamic> json) => Integrated(
    providerName: json["provider_name"],
    providerId: json["provider_id"],
  );

  Map<String, dynamic> toJson() => {
    "provider_name": providerName,
    "provider_id": providerId,
  };
}

class PerformerOrder {
  int? id;
  int? ordinal;

  PerformerOrder({
    this.id,
    this.ordinal,
  });

  factory PerformerOrder.fromJson(Map<String, dynamic> json) => PerformerOrder(
    id: json["id"],
    ordinal: json["ordinal"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "ordinal": ordinal,
  };
}

class Performer {
  String? type;
  String? name;
  String? image;
  int? id;
  PerformerImages? images;
  List<Division>? divisions;
  bool? hasUpcomingEvents;
  bool? primary;
  Stats? stats;
  List<Taxonomy>? taxonomies;
  String? imageAttribution;
  String? url;
  double? score;
  String? slug;
  int? homeVenueId;
  String? shortName;
  int? numUpcomingEvents;
  Colors? colors;
  String? imageLicense;
  int? popularity;
  bool? homeTeam;
  Location? location;
  String? imageRightsMessage;
  bool? isEvent;
  bool? awayTeam;

  Performer({
    this.type,
    this.name,
    this.image,
    this.id,
    this.images,
    this.divisions,
    this.hasUpcomingEvents,
    this.primary,
    this.stats,
    this.taxonomies,
    this.imageAttribution,
    this.url,
    this.score,
    this.slug,
    this.homeVenueId,
    this.shortName,
    this.numUpcomingEvents,
    this.colors,
    this.imageLicense,
    this.popularity,
    this.homeTeam,
    this.location,
    this.imageRightsMessage,
    this.isEvent,
    this.awayTeam,
  });

  factory Performer.fromJson(Map<String, dynamic> json) => Performer(
    type: json["type"],
    name: json["name"],
    image: json["image"],
    id: json["id"],
    images: json["images"] == null ? null : PerformerImages.fromJson(json["images"]),
    divisions: json["divisions"] == null ? [] : List<Division>.from(json["divisions"]!.map((x) => Division.fromJson(x))),
    hasUpcomingEvents: json["has_upcoming_events"],
    primary: json["primary"],
    stats: json["stats"] == null ? null : Stats.fromJson(json["stats"]),
    taxonomies: json["taxonomies"] == null ? [] : List<Taxonomy>.from(json["taxonomies"]!.map((x) => Taxonomy.fromJson(x))),
    imageAttribution: json["image_attribution"],
    url: json["url"],
    score: json["score"]?.toDouble(),
    slug: json["slug"],
    homeVenueId: json["home_venue_id"],
    shortName: json["short_name"],
    numUpcomingEvents: json["num_upcoming_events"],
    colors: json["colors"] == null ? null : Colors.fromJson(json["colors"]),
    imageLicense: json["image_license"],
    popularity: json["popularity"],
    homeTeam: json["home_team"],
    location: json["location"] == null ? null : Location.fromJson(json["location"]),
    imageRightsMessage: json["image_rights_message"],
    isEvent: json["is_event"],
    awayTeam: json["away_team"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "name": name,
    "image": image,
    "id": id,
    "images": images?.toJson(),
    "divisions": divisions == null ? [] : List<dynamic>.from(divisions!.map((x) => x.toJson())),
    "has_upcoming_events": hasUpcomingEvents,
    "primary": primary,
    "stats": stats?.toJson(),
    "taxonomies": taxonomies == null ? [] : List<dynamic>.from(taxonomies!.map((x) => x.toJson())),
    "image_attribution": imageAttribution,
    "url": url,
    "score": score,
    "slug": slug,
    "home_venue_id": homeVenueId,
    "short_name": shortName,
    "num_upcoming_events": numUpcomingEvents,
    "colors": colors?.toJson(),
    "image_license": imageLicense,
    "popularity": popularity,
    "home_team": homeTeam,
    "location": location?.toJson(),
    "image_rights_message": imageRightsMessage,
    "is_event": isEvent,
    "away_team": awayTeam,
  };
}

class Colors {
  List<String>? all;
  String? iconic;
  List<String>? primary;

  Colors({
    this.all,
    this.iconic,
    this.primary,
  });

  factory Colors.fromJson(Map<String, dynamic> json) => Colors(
    all: json["all"] == null ? [] : List<String>.from(json["all"]!.map((x) => x)),
    iconic: json["iconic"],
    primary: json["primary"] == null ? [] : List<String>.from(json["primary"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "all": all == null ? [] : List<dynamic>.from(all!.map((x) => x)),
    "iconic": iconic,
    "primary": primary == null ? [] : List<dynamic>.from(primary!.map((x) => x)),
  };
}

class Division {
  int? taxonomyId;
  String? shortName;
  String? displayName;
  String? displayType;
  int? divisionLevel;
  String? slug;

  Division({
    this.taxonomyId,
    this.shortName,
    this.displayName,
    this.displayType,
    this.divisionLevel,
    this.slug,
  });

  factory Division.fromJson(Map<String, dynamic> json) => Division(
    taxonomyId: json["taxonomy_id"],
    shortName: json["short_name"],
    displayName: json["display_name"],
    displayType: json["display_type"],
    divisionLevel: json["division_level"],
    slug: json["slug"],
  );

  Map<String, dynamic> toJson() => {
    "taxonomy_id": taxonomyId,
    "short_name": shortName,
    "display_name": displayName,
    "display_type": displayType,
    "division_level": divisionLevel,
    "slug": slug,
  };
}

class PerformerImages {
  String? huge;

  PerformerImages({
    this.huge,
  });

  factory PerformerImages.fromJson(Map<String, dynamic> json) => PerformerImages(
    huge: json["huge"],
  );

  Map<String, dynamic> toJson() => {
    "huge": huge,
  };
}

class Location {
  double? lat;
  double? lon;

  Location({
    this.lat,
    this.lon,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    lat: json["lat"]?.toDouble(),
    lon: json["lon"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lon": lon,
  };
}

class Stats {
  int? eventCount;

  Stats({
    this.eventCount,
  });

  factory Stats.fromJson(Map<String, dynamic> json) => Stats(
    eventCount: json["event_count"],
  );

  Map<String, dynamic> toJson() => {
    "event_count": eventCount,
  };
}

class Taxonomy {
  int? id;
  String? name;
  int? parentId;
  DocumentSource? documentSource;
  String? seoEventType;
  int? rank;

  Taxonomy({
    this.id,
    this.name,
    this.parentId,
    this.documentSource,
    this.seoEventType,
    this.rank,
  });

  factory Taxonomy.fromJson(Map<String, dynamic> json) => Taxonomy(
    id: json["id"],
    name: json["name"],
    parentId: json["parent_id"],
    documentSource: json["document_source"] == null ? null : DocumentSource.fromJson(json["document_source"]),
    seoEventType: json["seo_event_type"],
    rank: json["rank"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "parent_id": parentId,
    "document_source": documentSource?.toJson(),
    "seo_event_type": seoEventType,
    "rank": rank,
  };
}

class DocumentSource {
  String? sourceType;
  String? generationType;

  DocumentSource({
    this.sourceType,
    this.generationType,
  });

  factory DocumentSource.fromJson(Map<String, dynamic> json) => DocumentSource(
    sourceType: json["source_type"],
    generationType: json["generation_type"],
  );

  Map<String, dynamic> toJson() => {
    "source_type": sourceType,
    "generation_type": generationType,
  };
}

class Venue {
  int? id;
  String? name;
  String? nameV2;
  String? postalCode;
  String? timezone;
  double? score;
  int? popularity;
  String? address;
  String? country;
  String? city;
  String? state;
  String? slug;
  int? metroCode;
  int? capacity;
  List<dynamic>? links;
  String? extendedAddress;
  AccessMethod? accessMethod;
  Location? location;
  bool? hasUpcomingEvents;
  int? numUpcomingEvents;
  String? url;
  int? sgMarketArea;
  String? displayLocation;

  Venue({
    this.id,
    this.name,
    this.nameV2,
    this.postalCode,
    this.timezone,
    this.score,
    this.popularity,
    this.address,
    this.country,
    this.city,
    this.state,
    this.slug,
    this.metroCode,
    this.capacity,
    this.links,
    this.extendedAddress,
    this.accessMethod,
    this.location,
    this.hasUpcomingEvents,
    this.numUpcomingEvents,
    this.url,
    this.sgMarketArea,
    this.displayLocation,
  });

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
    id: json["id"],
    name: json["name"],
    nameV2: json["name_v2"],
    postalCode: json["postal_code"],
    timezone: json["timezone"],
    score: json["score"]?.toDouble(),
    popularity: json["popularity"],
    address: json["address"],
    country: json["country"],
    city: json["city"],
    state: json["state"],
    slug: json["slug"],
    metroCode: json["metro_code"],
    capacity: json["capacity"],
    links: json["links"] == null ? [] : List<dynamic>.from(json["links"]!.map((x) => x)),
    extendedAddress: json["extended_address"],
    accessMethod: json["access_method"] == null ? null : AccessMethod.fromJson(json["access_method"]),
    location: json["location"] == null ? null : Location.fromJson(json["location"]),
    hasUpcomingEvents: json["has_upcoming_events"],
    numUpcomingEvents: json["num_upcoming_events"],
    url: json["url"],
    sgMarketArea: json["sg_market_area"],
    displayLocation: json["display_location"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "name_v2": nameV2,
    "postal_code": postalCode,
    "timezone": timezone,
    "score": score,
    "popularity": popularity,
    "address": address,
    "country": country,
    "city": city,
    "state": state,
    "slug": slug,
    "metro_code": metroCode,
    "capacity": capacity,
    "links": links == null ? [] : List<dynamic>.from(links!.map((x) => x)),
    "extended_address": extendedAddress,
    "access_method": accessMethod?.toJson(),
    "location": location?.toJson(),
    "has_upcoming_events": hasUpcomingEvents,
    "num_upcoming_events": numUpcomingEvents,
    "url": url,
    "sg_market_area": sgMarketArea,
    "display_location": displayLocation,
  };
}

class Meta {
  int? total;
  int? took;
  int? page;
  int? perPage;
  dynamic geolocation;

  Meta({
    this.total,
    this.took,
    this.page,
    this.perPage,
    this.geolocation,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    total: json["total"],
    took: json["took"],
    page: json["page"],
    perPage: json["per_page"],
    geolocation: json["geolocation"],
  );

  Map<String, dynamic> toJson() => {
    "total": total,
    "took": took,
    "page": page,
    "per_page": perPage,
    "geolocation": geolocation,
  };
}
