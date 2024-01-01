// ignore_for_file: public_member_api_docs, sort_constructors_first
class RecommendedPlaceModel {
  final String title;
  final String image;
  final double rating;
  final String location;
  final String description;
  RecommendedPlaceModel({
    required this.title,
    required this.image,
    required this.rating,
    required this.location,
    required this.description,
  });
}

List<RecommendedPlaceModel> recommendedPlaces = [
  RecommendedPlaceModel(
    title: 'Tombeau de la Chrétienne',
    image: "assets/places/Tipaza.jpg",
    location: "Tipaza",
    rating: 4.4,
    description : 'Basilica in Algiers overlooking the bay of the capital city. Completed in 1872, this splendid building of neo-bysantine architecture is ornately decorated in the inside in the Spanish-Moorish decor.'
  ),
  RecommendedPlaceModel(
    title: 'Monument Aux Morts',
    image: "assets/places/monument.jpg",
    location: "Constantine",
    rating: 4.4,
    description : 'Basilica in Algiers overlooking the bay of the capital city. Completed in 1872, this splendid building of neo-bysantine architecture is ornately decorated in the inside in the Spanish-Moorish decor.'
  ),
  RecommendedPlaceModel(
    title: 'Algerian Sahara',
    image: "assets/places/sahara.jpg",
    location: "South Of Algeria",
    rating: 4.4,
    description : 'Basilica in Algiers overlooking the bay of the capital city. Completed in 1872, this splendid building of neo-bysantine architecture is ornately decorated in the inside in the Spanish-Moorish decor.'
  ),
  RecommendedPlaceModel(
    title: 'Emir Abdelkader Mosquée',
    image: "assets/places/ElAmir.jpg",
    location: "Constantine",
    rating: 4.4,
    description : 'Basilica in Algiers overlooking the bay of the capital city. Completed in 1872, this splendid building of neo-bysantine architecture is ornately decorated in the inside in the Spanish-Moorish decor.'
  ),
];
