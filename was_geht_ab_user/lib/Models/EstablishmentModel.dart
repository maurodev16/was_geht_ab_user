import 'OpeningHours.dart';
import 'UserModel.dart';

class EstablishmentModel {
  String? id;
  List<OpeningHours>? openingHours;
  String? logoUrl;
  String? title;
  String? streetName;
  String? localName;
  String? district;
  String? number;
  String? postalCode;
  String? cityName;
  String? countryName;
  String? phone;
  UserModel? user;

  List<dynamic>? weekDays;
  bool? drinks;
  bool? dance;
  bool? goodToGoWithGroup;
  bool? isAgeVerified;
  bool? dineIn;
  bool? takeWay;
  bool? accessibleParking;
  bool? stepFreeEntry;
  bool? accessibleRestrooms;
  bool? elevator;
  bool? ramps;
  bool? wideCorridors;
  bool? brailleSignage;
  bool? mobilityAssistance;
  bool? serviceDogAccess;
  bool? audioDescriptionOrVisualGuide;
  bool? accessibleCommunication;
  bool? convenienceParking;
  bool? wiFiAccess;
  bool? outdoorSeating;
  bool? indoorSeating;
  bool? deliveryService;
  bool? reservationService;
  bool? driveThrough;
  bool? onlineOrdering;
  bool? atmAccess;
  bool? dining;
  bool? alcoholicBeverages;
  bool? shisha;
  bool? wineSelection;
  bool? beerSelection;
  bool? cocktails;
  bool? nonAlcoholicBeverages;
  bool? coffeeAndTea;
  bool? desserts;
  bool? veganOptions;
  bool? vegetarianOptions;
  bool? danceFloor;
  bool? casualSetting;
  bool? formalSetting;
  bool? liveMusic;
  bool? karaoke;
  bool? outdoorSeatingAtmosphere;
  bool? barArea;
  bool? goodForGroups;
  bool? intimateSetting;
  bool? familyFriendly;
  bool? loungeArea;
  List<dynamic>? musicCategoryName;
  String? selectedAge;
  String? entrancePrice;
  bool? isFeatured;
  List<dynamic>? musicCategoryId;
  bool? goodForGroupsPublic;
  bool? kidFriendly;
  bool? adultsOnly;
  bool? soloFriendly;
  bool? petFriendly;
  bool? lgbtqPlusFriendly;
  bool? accessibleToAll;
  bool? couplesRetreat;
  bool? studentFriendly;
  bool? walkInsWelcome;
  bool? privateEvents;
  bool? eventPlanningServices;
  bool? cateringServices;
  bool? tableReservations;
  bool? partyReservation;
  bool? onlineBooking;
  bool? eventSpaceRental;
  bool? partyPackages;
  bool? customEventPackages;
  bool? creditCardsAccepted;
  bool? debitCardsAccepted;
  bool? cashOnly;
  bool? mobilePayments;
  bool? contactlessPayments;
  bool? onlinePayments;
  bool? checks;
  bool? splitBills;
  bool? giftCards;
  bool? cryptoCurrency;
  bool? canPayWithCardEntry;
  bool? isFreeEntry;
  String? freeEntryTill;
  List<dynamic>? follower;
  int? followersCount;
  bool? establishmentIsOnline;
  DateTime? createdAt;
  DateTime? updatedAt;

  EstablishmentModel({
    this.id,
    this.openingHours,
    this.logoUrl,
    this.title,
    this.streetName,
    this.localName,
    this.district,
    this.number,
    this.postalCode,
    this.cityName,
    this.countryName,
    this.phone,
    this.user,
    this.weekDays,
    this.drinks,
    this.dance,
    this.goodToGoWithGroup,
    this.isAgeVerified,
    this.dineIn,
    this.takeWay,
    this.accessibleParking,
    this.stepFreeEntry,
    this.accessibleRestrooms,
    this.elevator,
    this.ramps,
    this.wideCorridors,
    this.brailleSignage,
    this.mobilityAssistance,
    this.serviceDogAccess,
    this.audioDescriptionOrVisualGuide,
    this.accessibleCommunication,
    this.convenienceParking,
    this.wiFiAccess,
    this.outdoorSeating,
    this.indoorSeating,
    this.deliveryService,
    this.reservationService,
    this.driveThrough,
    this.onlineOrdering,
    this.atmAccess,
    this.dining,
    this.alcoholicBeverages,
    this.shisha,
    this.wineSelection,
    this.beerSelection,
    this.cocktails,
    this.nonAlcoholicBeverages,
    this.coffeeAndTea,
    this.desserts,
    this.veganOptions,
    this.vegetarianOptions,
    this.danceFloor,
    this.casualSetting,
    this.formalSetting,
    this.liveMusic,
    this.karaoke,
    this.outdoorSeatingAtmosphere,
    this.barArea,
    this.intimateSetting,
    this.familyFriendly,
    this.loungeArea,
    this.musicCategoryName,
    this.selectedAge,
    this.entrancePrice,
    this.isFeatured,
    this.musicCategoryId,
    this.goodForGroupsPublic,
    this.kidFriendly,
    this.adultsOnly,
    this.soloFriendly,
    this.petFriendly,
    this.lgbtqPlusFriendly,
    this.accessibleToAll,
    this.couplesRetreat,
    this.studentFriendly,
    this.walkInsWelcome,
    this.privateEvents,
    this.eventPlanningServices,
    this.cateringServices,
    this.tableReservations,
    this.partyReservation,
    this.onlineBooking,
    this.eventSpaceRental,
    this.partyPackages,
    this.customEventPackages,
    this.creditCardsAccepted,
    this.debitCardsAccepted,
    this.cashOnly,
    this.mobilePayments,
    this.contactlessPayments,
    this.onlinePayments,
    this.checks,
    this.splitBills,
    this.giftCards,
    this.cryptoCurrency,
    this.canPayWithCardEntry,
    this.isFreeEntry,
    this.freeEntryTill,
    this.follower,
    this.followersCount,
    this.establishmentIsOnline,
    this.createdAt,
    this.updatedAt,
  });

  factory EstablishmentModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> jsonOpeningHours = json['opening_hours'] ?? [];
    List<OpeningHours> openingHours =
        jsonOpeningHours.map((data) => OpeningHours.fromJson(data)).toList();
    return EstablishmentModel(
      id: json['_id'],
      logoUrl: json['logo_url'],
      title: json['title'],
      streetName: json['street_name'],
      localName: json['local_name'],
      district: json['district'],
      number: json['number'],
      postalCode: json['postal_code'],
      cityName: json['city_name'],
      countryName: json['country_name'],
      phone: json['phone'],
      user: UserModel.fromJson(json['user']),
      openingHours: openingHours,
      weekDays: json['week_days'],
      drinks: json['drinks'],
      dance: json['dance'],
      goodToGoWithGroup: json['good_to_go_with_group'],
      isAgeVerified: json['is_age_verified'],
      dineIn: json['dine_in'],
      takeWay: json['take_way'],
      accessibleParking: json['accessible_parking'],
      stepFreeEntry: json['step_free_entry'],
      accessibleRestrooms: json['accessible_restrooms'],
      elevator: json['elevator'],
      ramps: json['ramps'],
      wideCorridors: json['wide_corridors'],
      brailleSignage: json['braille_signage'],
      mobilityAssistance: json['mobility_assistance'],
      serviceDogAccess: json['service_dog_access'],
      audioDescriptionOrVisualGuide: json['audio_description_or_visual_guide'],
      accessibleCommunication: json['accessible_communication'],
      convenienceParking: json['convenience_parking'],
      wiFiAccess: json['wi_fi_access'],
      outdoorSeating: json['outdoor_seating'],
      indoorSeating: json['indoor_seating'],
      deliveryService: json['delivery_service'],
      reservationService: json['reservation_service'],
      driveThrough: json['drive_through'],
      onlineOrdering: json['online_ordering'],
      atmAccess: json['atm_access'],
      dining: json['dining'],
      alcoholicBeverages: json['alcoholic_beverages'],
      shisha: json['shisha'],
      wineSelection: json['wine_selection'],
      beerSelection: json['beer_selection'],
      cocktails: json['cocktails'],
      nonAlcoholicBeverages: json['non_alcoholic_beverages'],
      coffeeAndTea: json['coffee_and_tea'],
      desserts: json['desserts'],
      veganOptions: json['vegan_options'],
      vegetarianOptions: json['vegetarian_options'],
      danceFloor: json['dance_floor'],
      casualSetting: json['casual_setting'],
      formalSetting: json['formal_setting'],
      liveMusic: json['live_music'],
      karaoke: json['karaoke'],
      outdoorSeatingAtmosphere: json['outdoor_seating_atmosphere'],
      barArea: json['bar_area'],
      intimateSetting: json['intimate_setting'],
      familyFriendly: json['family_friendly'],
      loungeArea: json['lounge_area'],
      musicCategoryName: json['music_category_name'],
      selectedAge: json['selected_age'],
      entrancePrice: json['entrance_price'],
      isFeatured: json['is_featured'],
      musicCategoryId: json['music_category_id'],
      goodForGroupsPublic: json['good_for_groups_public'],
      kidFriendly: json['kid_friendly'],
      adultsOnly: json['adults_only'],
      soloFriendly: json['solo_friendly'],
      petFriendly: json['pet_friendly'],
      lgbtqPlusFriendly: json['lgbtq_plus_friendly'],
      accessibleToAll: json['accessible_to_all'],
      couplesRetreat: json['couples_retreat'],
      studentFriendly: json['student_friendly'],
      walkInsWelcome: json['walk_ins_welcome'],
      privateEvents: json['private_events'],
      eventPlanningServices: json['event_planning_services'],
      cateringServices: json['catering_services'],
      tableReservations: json['table_reservations'],
      partyReservation: json['party_reservations'],
      onlineBooking: json['online_booking'],
      eventSpaceRental: json['event_space_rental'],
      partyPackages: json['party_packages'],
      customEventPackages: json['custom_event_packages'],
      creditCardsAccepted: json['credit_cards_accepted'],
      debitCardsAccepted: json['debit_cards_accepted'],
      cashOnly: json['cash_only'],
      mobilePayments: json['mobile_payments'],
      contactlessPayments: json['contactless_payments'],
      onlinePayments: json['online_payments'],
      checks: json['checks'],
      splitBills: json['split_bills'],
      giftCards: json['gift_cards'],
      cryptoCurrency: json['crypto_currency'],
      canPayWithCardEntry: json['can_pay_with_card_entry'],
      isFreeEntry: json['is_free_entry'],
      freeEntryTill: json['free_entry_till'],
      follower: json['follower'],
      followersCount: json['followers_count'],
      establishmentIsOnline: json['establishment_is_online'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'logo_url': logoUrl,
      'title': title,
      'street_name': streetName,
      'local_name': localName,
      'district': district,
      'number': number,
      'postal_code': postalCode,
      'city_name': cityName,
      'country_name': countryName,
      'phone': phone,
      'user': user?.toJson(),
      'opening_hours': openingHours!.map((oh) => oh.toJson()).toList(),
      'week_days': weekDays,
      'drinks': drinks,
      'dance': dance,
      'good_to_go_with_group': goodToGoWithGroup,
      'is_age_verified': isAgeVerified,
      'dine_in': dineIn,
      'take_way': takeWay,
      'accessible_parking': accessibleParking,
      'step_free_entry': stepFreeEntry,
      'accessible_restrooms': accessibleRestrooms,
      'elevator': elevator,
      'ramps': ramps,
      'wide_corridors': wideCorridors,
      'braille_signage': brailleSignage,
      'mobility_assistance': mobilityAssistance,
      'service_dog_access': serviceDogAccess,
      'audio_description_or_visual_guide': audioDescriptionOrVisualGuide,
      'accessible_communication': accessibleCommunication,
      'convenience_parking': convenienceParking,
      'wi_fi_access': wiFiAccess,
      'outdoor_seating': outdoorSeating,
      'indoor_seating': indoorSeating,
      'delivery_service': deliveryService,
      'reservation_service': reservationService,
      'drive_through': driveThrough,
      'online_ordering': onlineOrdering,
      'atm_access': atmAccess,
      'dining': dining,
      'alcoholic_beverages': alcoholicBeverages,
      'shisha': shisha,
      'wine_selection': wineSelection,
      'beer_selection': beerSelection,
      'cocktails': cocktails,
      'non_alcoholic_beverages': nonAlcoholicBeverages,
      'coffee_and_tea': coffeeAndTea,
      'desserts': desserts,
      'vegan_options': veganOptions,
      'vegetarian_options': vegetarianOptions,
      'dance_floor': danceFloor,
      'casual_setting': casualSetting,
      'formal_setting': formalSetting,
      'live_music': liveMusic,
      'karaoke': karaoke,
      'outdoor_seating_atmosphere': outdoorSeatingAtmosphere,
      'bar_area': barArea,
      'good_for_groups': goodForGroups,
      'intimate_setting': intimateSetting,
      'family_friendly': familyFriendly,
      'lounge_area': loungeArea,
      'music_category_name': musicCategoryName,
      'selected_age': selectedAge,
      'entrance_price': entrancePrice,
      'is_featured': isFeatured,
      'music_category_id': musicCategoryId,
      'good_for_groups_public': goodForGroupsPublic,
      'kid_friendly': kidFriendly,
      'adults_only': adultsOnly,
      'solo_friendly': soloFriendly,
      'pet_friendly': petFriendly,
      'lgbtq_plus_friendly': lgbtqPlusFriendly,
      'accessible_to_all': accessibleToAll,
      'couples_retreat': couplesRetreat,
      'student_friendly': studentFriendly,
      'walk_ins_welcome': walkInsWelcome,
      'private_events': privateEvents,
      'event_planning_services': eventPlanningServices,
      'catering_services': cateringServices,
      'table_reservations': tableReservations,
      'party_reservations': partyReservation,
      'online_booking': onlineBooking,
      'event_space_rental': eventSpaceRental,
      'party_packages': partyPackages,
      'custom_event_packages': customEventPackages,
      'credit_cards_accepted': creditCardsAccepted,
      'debit_cards_accepted': debitCardsAccepted,
      'cash_only': cashOnly,
      'mobile_payments': mobilePayments,
      'contactless_payments': contactlessPayments,
      'online_payments': onlinePayments,
      'checks': checks,
      'split_bills': splitBills,
      'gift_cards': giftCards,
      'crypto_currency': cryptoCurrency,
      'can_pay_with_card_entry': canPayWithCardEntry,
      'is_free_entry': isFreeEntry,
      'free_entry_till': freeEntryTill,
      'follower': follower,
      'followers_count': followersCount,
      'establishment_is_online': establishmentIsOnline,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
