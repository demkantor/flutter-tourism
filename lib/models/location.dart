import './location_fact.dart';

/// Represents a tourism location a user can visit.
class Location {
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(
        'Satorini, Greece',
        'assets/images/santorini.jpg',
        [
          LocationFact('Summary',
              'Crescent-shaped Santorini (or Thíra), the precious gem of the Aegean, is actually a group of islands consisting of Thíra, Thirassiá, Asproníssi, Palea and Nea Kaméni in the southernmost part of Cyclades.'),
          LocationFact('The volcano is still active!',
              'Did you know that the whole complex of Santorini islands is still an active volcano (the same as Méthana, Mílos and Nísiros) and probably the only volcano in the world whose crater is in the sea? The islands that form Santorini came into existence as a result of intensive volcanic activity; twelve huge eruptions occurred, one every 20,000 years approximately, and each violent eruption caused the collapse of the volcano’s central part creating a large crater (caldera).'),
        ],
      ),
    ];
  }
}
