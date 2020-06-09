import './location_fact.dart';

/// Represents a tourism location a user can visit.
class Location {
  final int id;
  final String name;
  final String imagePath;
  final String dateTaken;
  final String notes;
  final List<LocationFact> facts;

  Location({
    this.id,
    this.name,
    this.imagePath,
    this.dateTaken,
    this.notes,
    this.facts,
  });

  static List<Location> fetchAll() {
    return [
      Location(
        id: 1,
        name: 'Satorini, Greece',
        imagePath: 'assets/images/santorini.jpg',
        dateTaken: 'June 23, 2013',
        notes: 'Built Into Cliffs',
        facts: [
          LocationFact('How Satorini came to be',
              'Crescent-shaped Santorini (or Thíra), the precious gem of the Aegean, is actually a group of islands consisting of Thíra, Thirassiá, Asproníssi, Palea and Nea Kaméni in the southernmost part of Cyclades.'),
          LocationFact('The volcano is still active!',
              'Did you know that the whole complex of Santorini islands is still an active volcano (the same as Méthana, Mílos and Nísiros) and probably the only volcano in the world whose crater is in the sea? The islands that form Santorini came into existence as a result of intensive volcanic activity; twelve huge eruptions occurred, one every 20,000 years approximately, and each violent eruption caused the collapse of the volcano’s central part creating a large crater (caldera).'),
        ],
      ),
      Location(
        id: 2,
        name: 'Satorini, Greece',
        imagePath: 'assets/images/santorini2.jpg',
        dateTaken: 'June 23, 2013',
        notes: 'The Best Hotel',
        facts: [
          LocationFact('Explore the island’s towns',
              'Firá is the picturesque capital of the island; perched high up on the edge of the Caldera, it looks like a marvellous painting.'),
          LocationFact('Did You Know',
              'Firá, together with Oia, Imerovígli and Firostefáni located high above on a cliff, make up the so-called “Caldera’s eyebrow”, the balcony of Santorini, which offers an amazing view of the volcano. '),
        ],
      ),
      Location(
        id: 3,
        name: 'Satorini, Greece',
        imagePath: 'assets/images/santorini3.jpg',
        dateTaken: 'June 25, 2013',
        notes: 'Unparalled Beauty',
        facts: [
          LocationFact('Searching for romance',
              'Santorini is considered to be the most sought after place for a romantic getaway in Greece, since there are not many places in the world where you can enjoy exquisitely clear waters while perched on the rim of a massive active volcano in the middle of the sea!'),
          LocationFact('Wedding Destinations',
              'A trip to Santorini with the other half is a dream for anyone who has seen at least one photo of the island’s famous Caldera and exchanging kisses beneath Santorini’s famous sunset is the ultimate romantic experience!'),
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
