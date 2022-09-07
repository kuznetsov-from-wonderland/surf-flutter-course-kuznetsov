import 'package:places/domain/lat_lng.dart';
import 'package:places/domain/sight.dart';

const Sight burjKhalifa = Sight(
  name: 'Burj Khalifa',
  location: LatLng(lat: 25.1972, lgn: 55.2744),
  url: 'https://wallpaperaccess.com/full/1136554.jpg',
  details:
      'The Burj Khalifa, known as the Burj Dubai prior to its inauguration in 2010, is a skyscraper in Dubai, United Arab Emirates. With a total height of 829.8 m (2,722 ft, or just over half a mile) and a roof height (excluding antenna, but including a 223 m spire[2]) of 828 m (2,717 ft), the Burj Khalifa has been the tallest structure and building in the world since its topping out in 2009, supplanting Taipei 101, the previous holder of that status',
  type: SightType.scyscrapper,
);

const List<Sight> sightMocks = [burjKhalifa];
