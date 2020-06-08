import './location_fact.dart';

/// Represents a tourism location a user can visit.
class Location {
  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(
        1,
        'Satorini, Greece',
        'assets/images/santorini.jpg',
        [
          LocationFact('Summary',
              'Crescent-shaped Santorini (or Thíra), the precious gem of the Aegean, is actually a group of islands consisting of Thíra, Thirassiá, Asproníssi, Palea and Nea Kaméni in the southernmost part of Cyclades.'),
          LocationFact('The volcano is still active!',
              'Did you know that the whole complex of Santorini islands is still an active volcano (the same as Méthana, Mílos and Nísiros) and probably the only volcano in the world whose crater is in the sea? The islands that form Santorini came into existence as a result of intensive volcanic activity; twelve huge eruptions occurred, one every 20,000 years approximately, and each violent eruption caused the collapse of the volcano’s central part creating a large crater (caldera).'),
        ],
      ),
      Location(
        2,
        'Satorini, Greece',
        'assets/images/santorini2.jpg',
        [
          LocationFact('Summary',
              'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
          LocationFact('Did You Know',
              'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
        ],
      ),
      Location(
        3,
        'Satorini, Greece',
        'assets/images/santorini3.jpg',
        [
          LocationFact('Summary',
              'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
          LocationFact('How to Get There',
              'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
        ],
      ),
    ];
  }
  static Location fetchById(int locationID) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
