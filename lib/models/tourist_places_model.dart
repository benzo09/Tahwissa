// ignore_for_file: public_member_api_docs, sort_constructors_first
class TouristPlacesModel {
  final String name;
  final String image;
  TouristPlacesModel({
    required this.name,
    required this.image,
  });
}

List<TouristPlacesModel> touristPlaces = [
  TouristPlacesModel(name: "City", image: "assets/icons/city.jpg"),
  TouristPlacesModel(name: "Restaurants", image: "assets/icons/food.jpg"),
  TouristPlacesModel(name: "Hotels", image: "assets/icons/hotel.jpg"),
  TouristPlacesModel(name: "Historical Sites", image: "assets/icons/histo.jpg"),
  TouristPlacesModel(name: "Beach", image: "assets/icons/beach.jpg"),
  TouristPlacesModel(name: "Sahara", image: "assets/icons/desert.png"),
  // TouristPlacesModel(name: "Forest", image: "assets/icons/forest.png"),
];

// Museums, Cafes and restaurants, Historical Sites, and Other Places