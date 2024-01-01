import 'package:flutter/material.dart';
import 'package:travel_app/models/nearby_places_model.dart';
import 'package:travel_app/pages/tourist_details_page.dart';
import 'package:travel_app/widgets/distance.dart';

// ignore: must_be_immutable
class NearbyPlaces extends StatelessWidget {
  const NearbyPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(nearbyPlaces.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 135,
            width: double.maxFinite,
            child: Card(
              color: const Color.fromARGB(255, 37, 157, 255),
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                          image: nearbyPlaces[index].image,
                          myTitle: nearbyPlaces[index].title,
                          mySubtitle: nearbyPlaces[index].subTitle,
                          myDescription: nearbyPlaces[index].description,
                          myRating: '${nearbyPlaces[index].rating}',
                        ),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          nearbyPlaces[index].image,
                          height: double.maxFinite,
                          width: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              nearbyPlaces[index].title,
                              style: const TextStyle(
                                fontFamily: 'Cabin',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(nearbyPlaces[index].subTitle,
                                style: const TextStyle(
                                fontFamily: 'Cabin',
                                  color: Colors.white,
                                )),
                            const SizedBox(height: 10),
                            // DISTANCE WIDGET
                            const Distance(),
                            const Spacer(),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade700,
                                  size: 14,
                                ),
                                Text(
                                  '${nearbyPlaces[index].rating}',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                const Spacer(),
                                RichText(
                                  text: TextSpan(
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                      text: nearbyPlaces[index].price,
                                      children: const [
                                        TextSpan(
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                            ),
                                            text: " /Person")
                                      ]),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
