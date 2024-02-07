class CatModel {
  const CatModel({
    required this.id,
    required this.name,
    required this.weight,
    required this.cfaUrl,
    required this.vetstreetUrl,
    required this.vcahospitalsUrl,
    required this.temperament,
    required this.origin,
    required this.countryCodes,
    required this.countryCode,
    required this.description,
    required this.lifeSpan,
    required this.indoor,
    required this.lap,
    required this.altNames,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppressedTail,
    required this.shortLegs,
    required this.wikipediaUrl,
    required this.hypoallergenic,
    required this.referenceImageId,
    required this.catFriendly,
    required this.bidability,
  });

  final String id;
  final String name;
  final String? weight;
  final String? cfaUrl;
  final String? vetstreetUrl;
  final String? vcahospitalsUrl;
  final String temperament;
  final String origin;
  final String countryCodes;
  final String countryCode;
  final String description;
  final String lifeSpan;
  final int indoor;
  final int? lap;
  final String? altNames;
  final int adaptability;
  final int affectionLevel;
  final int childFriendly;
  final int dogFriendly;
  final int energyLevel;
  final int grooming;
  final int healthIssues;
  final int intelligence;
  final int sheddingLevel;
  final int socialNeeds;
  final int strangerFriendly;
  final int vocalisation;
  final int experimental;
  final int hairless;
  final int natural;
  final int rare;
  final int rex;
  final int suppressedTail;
  final int shortLegs;
  final String? wikipediaUrl;
  final int hypoallergenic;
  final String? referenceImageId;
  final int? catFriendly;
  final int? bidability;

  factory CatModel.fromMap(Map<String, dynamic> map) {
    return CatModel(
      id: map['id'],
      name: map['name'],
      weight: map['weight']?['metric'],
      cfaUrl: map['cfaUrl'],
      vetstreetUrl: map['vetstreetUrl'],
      vcahospitalsUrl: map['vcahospitalsUrl'],
      temperament: map['temperament'],
      origin: map['origin'],
      countryCodes: map['countryCodes'],
      countryCode: map['countryCode'],
      description: map['description'],
      lifeSpan: map['lifeSpan'],
      indoor: map['indoor'],
      lap: map['lap'],
      altNames: map['altNames'],
      adaptability: map['adaptability'],
      affectionLevel: map['affectionLevel'],
      childFriendly: map['childFriendly'],
      dogFriendly: map['dogFriendly'],
      energyLevel: map['energyLevel'],
      grooming: map['grooming'],
      healthIssues: map['healthIssues'],
      intelligence: map['intelligence'],
      sheddingLevel: map['sheddingLevel'],
      socialNeeds: map['socialNeeds'],
      strangerFriendly: map['strangerFriendly'],
      vocalisation: map['vocalisation'],
      experimental: map['experimental'],
      hairless: map['hairless'],
      natural: map['natural'],
      rare: map['rare'],
      rex: map['rex'],
      suppressedTail: map['suppressedTail'],
      shortLegs: map['shortLegs'],
      wikipediaUrl: map['wikipediaUrl'],
      hypoallergenic: map['hypoallergenic'],
      referenceImageId: map['referenceImageId'],
      catFriendly: map['catFriendly'],
      bidability: map['bidability'],
    );
  }

  @override
  bool operator ==(covariant CatModel other) {
    if (identical(this, other)) return true;
    return other.id == id &&
        other.name == name &&
        other.weight == weight &&
        other.cfaUrl == cfaUrl &&
        other.vetstreetUrl == vetstreetUrl &&
        other.vcahospitalsUrl == vcahospitalsUrl &&
        other.temperament == temperament &&
        other.origin == origin &&
        other.countryCodes == countryCodes &&
        other.countryCode == countryCode &&
        other.description == description &&
        other.lifeSpan == lifeSpan &&
        other.indoor == indoor &&
        other.lap == lap &&
        other.altNames == altNames &&
        other.adaptability == adaptability &&
        other.affectionLevel == affectionLevel &&
        other.childFriendly == childFriendly &&
        other.dogFriendly == dogFriendly &&
        other.energyLevel == energyLevel &&
        other.grooming == grooming &&
        other.healthIssues == healthIssues &&
        other.intelligence == intelligence &&
        other.sheddingLevel == sheddingLevel &&
        other.socialNeeds == socialNeeds &&
        other.strangerFriendly == strangerFriendly &&
        other.vocalisation == vocalisation &&
        other.experimental == experimental &&
        other.hairless == hairless &&
        other.natural == natural &&
        other.rare == rare &&
        other.rex == rex &&
        other.suppressedTail == suppressedTail &&
        other.shortLegs == shortLegs &&
        other.wikipediaUrl == wikipediaUrl &&
        other.hypoallergenic == hypoallergenic &&
        other.referenceImageId == referenceImageId &&
        other.catFriendly == catFriendly &&
        other.bidability == bidability;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        weight.hashCode ^
        cfaUrl.hashCode ^
        vetstreetUrl.hashCode ^
        vcahospitalsUrl.hashCode ^
        temperament.hashCode ^
        origin.hashCode ^
        countryCodes.hashCode ^
        countryCode.hashCode ^
        description.hashCode ^
        lifeSpan.hashCode ^
        indoor.hashCode ^
        lap.hashCode ^
        altNames.hashCode ^
        adaptability.hashCode ^
        affectionLevel.hashCode ^
        childFriendly.hashCode ^
        dogFriendly.hashCode ^
        energyLevel.hashCode ^
        grooming.hashCode ^
        healthIssues.hashCode ^
        intelligence.hashCode ^
        sheddingLevel.hashCode ^
        socialNeeds.hashCode ^
        strangerFriendly.hashCode ^
        vocalisation.hashCode ^
        experimental.hashCode ^
        hairless.hashCode ^
        natural.hashCode ^
        rare.hashCode ^
        rex.hashCode ^
        suppressedTail.hashCode ^
        shortLegs.hashCode ^
        wikipediaUrl.hashCode ^
        hypoallergenic.hashCode ^
        referenceImageId.hashCode ^
        catFriendly.hashCode ^
        bidability.hashCode;
  }
}
