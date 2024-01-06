import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'package:ionicons/ionicons.dart';
class bookmark extends StatefulWidget {
  const bookmark({super.key});

  @override
  State<bookmark> createState() => _bookmarkState();
}

class _bookmarkState extends State<bookmark> {
    int _currentIndex = 1;
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
        tobookmark();
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
    void tobookmark() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const bookmark(),
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
      body: Center(
        child: Text('no bookmarks added'),
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