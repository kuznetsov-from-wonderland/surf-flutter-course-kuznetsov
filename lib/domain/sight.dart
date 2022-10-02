import 'package:places/domain/lat_lng.dart';

class Sight {
  final String name; // - название достопримечательности
  final LatLng location;
  final String url; //- путь до фотографии в интернете
  final String details; //- описание достопримечательности
  final SightType type; // тип достопримечательности.

  const Sight({
    required this.name,
    required this.location,
    required this.url,
    required this.details,
    required this.type,
  });
}

enum SightType {
  scyscrapper,
  square,
  monument,
  hotel,
}

extension SightTypeExt on SightType {
  String get name {
    switch (this) {
      case SightType.scyscrapper:
        return 'scyscrapper';
      case SightType.square:
        return 'square';
      case SightType.monument:
        return 'monument';
      case SightType.hotel:
        return 'hotel';
    }
  }
}
