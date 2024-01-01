// ignore_for_file: public_member_api_docs, sort_constructors_first

class NearbyPlaceModel {
  final String image;
  final String title;
  final String subTitle;
  final double rating;
  final String price;
  final String description;

  NearbyPlaceModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.rating,
    required this.description,
  });
}

List<NearbyPlaceModel> nearbyPlaces = [
  NearbyPlaceModel(
      image: "assets/places/notre-dame-d-afrique.jpg",
      title: 'Notre Dame d\'Afrique',
      subTitle: 'Algiers',
      price: '50da',
      rating: 4.7,
      description:
          'Basilica in Algiers overlooking the bay of the capital city. Completed in 1872, this splendid building of neo-bysantine architecture is ornately decorated in the inside in the Spanish-Moorish decor.'),
  NearbyPlaceModel(
      image: "assets/places/fort-santa-cruz.jpg",
      title: 'Fort Santa Cruz',
      subTitle: 'Oran',
      price: 'Free',
      rating: 4.8,
      description:
          'Basilica in Algiers overlooking the bay of the capital city. Completed in 1872, this splendid building of neo-bysantine architecture is ornately decorated in the inside in the Spanish-Moorish decor.'),
  NearbyPlaceModel(
      image: "assets/places/memorial-du-martyr.jpg",
      title: 'Memorial du Martyr',
      subTitle: 'Algiers',
      price: 'Free',
      rating: 4.5,
      description:
          'Basilica in Algiers overlooking the bay of the capital city. Completed in 1872, this splendid building of neo-bysantine architecture is ornately decorated in the inside in the Spanish-Moorish decor.'),
  NearbyPlaceModel(
      image: "assets/places/ElAmir.jpg",
      title: 'Emir Abdelkader Mosquée',
      subTitle: 'Constantine',
      price: 'Free',
      rating: 4.8,
      description:
          'Basilica in Algiers overlooking the bay of the capital city. Completed in 1872, this splendid building of neo-bysantine architecture is ornately decorated in the inside in the Spanish-Moorish decor.'),
  NearbyPlaceModel(
      image: "assets/places/sahara.jpg",
      title: 'Algerian Sahara',
      subTitle: 'South of Algeria',
      price: 'Free',
      rating: 4.8,
      description:
          'Basilica in Algiers overlooking the bay of the capital city. Completed in 1872, this splendid building of neo-bysantine architecture is ornately decorated in the inside in the Spanish-Moorish decor.'),
  NearbyPlaceModel(
      image: "assets/places/monument.jpg",
      title: 'Monument Aux Morts',
      subTitle: 'Constantine',
      price: 'Free',
      rating: 4.0,
      description:
          'Basilica in Algiers overlooking the bay of the capital city. Completed in 1872, this splendid building of neo-bysantine architecture is ornately decorated in the inside in the Spanish-Moorish decor.'),
  NearbyPlaceModel(
      image: "assets/places/Tipaza.jpg",
      title: 'Tombeau de la Chrétienne',
      subTitle: 'Tipaza',
      price: '100da',
      rating: 4.1,
      description:
          'Basilica in Algiers overlooking the bay of the capital city. Completed in 1872, this splendid building of neo-bysantine architecture is ornately decorated in the inside in the Spanish-Moorish decor.'),
];
