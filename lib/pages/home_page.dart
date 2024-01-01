import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
// import 'package:travel_app/widgets/custom_icon_button.dart';
// import 'package:travel_app/widgets/location_card.dart';
import 'package:travel_app/widgets/nearby_places.dart';
import 'package:travel_app/widgets/recommended_places.dart';
import 'package:travel_app/widgets/tourist_places.dart';
import 'login_page.dart';
import 'my_welcome_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  bool _isSearchVisible = false;
  final TextEditingController _searchController = TextEditingController();

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Add logic to navigate to different pages based on the index
    switch (_currentIndex) {
      case 0:
        tohome();
        break;
      case 1:
        tohome();
        break;
      case 2:
        tologin();

        break;
    }
  }

  void tologin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Login(),
      ),
    );
  }

  void tohome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 0, 81, 106),
        foregroundColor: Colors.white,
        title: Row(
          children: [
            const SizedBox(width: 5),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "TAHWISSSA",
                  style: TextStyle(
                      fontSize: 23,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2),
                ),
                Text(
                  " Discover Algeria",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white),
                )
              ],
            ),
            const SizedBox(width: 20),
            Image.asset('assets/icons/tahwissaLogo.png', width: 55),
          ],
        ),
        actions: [
          Visibility(
            visible: !_isSearchVisible,
            child: IconButton(
              icon: const Icon(Ionicons.search_outline),
              onPressed: () {
                setState(() => _isSearchVisible = true);
              },
            ),
          ),
          Visibility(
            visible: _isSearchVisible,
            child: Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  setState(() {
                    _isSearchVisible = false;
                    _searchController.clear();
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 12),
            child: IconButton(
              icon: const Icon(Ionicons.notifications_outline),
              onPressed: () {
                // Add your notification button logic here
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          if (_isSearchVisible)
            Container(
              color: const Color(0xFF37c4ee),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  color: Colors.white,
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Ionicons.search_outline),
                      hintText: 'Search...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(14),
              children: [
                // const LocationCard(),
                // const SizedBox(height: 15),
                const TouristPlaces(),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Popular Nearby",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 50, 66),
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "View All",
                          style: TextStyle(
                            fontFamily: 'Cabin',
                            color: Colors.black54,
                          ),
                        ))
                  ],
                ),
                const SizedBox(height: 10),
                const RecommendedPlaces(),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Recommendation",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 50, 66),
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text("View All",
                            style: TextStyle(
                              fontFamily: 'Cabin',
                              color: Colors.black54,
                            )))
                  ],
                ),
                const SizedBox(height: 10),
                const NearbyPlaces(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 0, 81, 106),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,

        onTap: _onItemTapped, // Set the callback for item tap
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.bookmark_outline),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
