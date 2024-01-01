import 'package:flutter/material.dart';
import 'package:travel_app/pages/home_page.dart';
// import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage('assets/places/Background.jpg'),
                fit: BoxFit.cover,
                opacity: 0.78,
                colorFilter: ColorFilter.mode(Colors.blue.shade300,BlendMode.darken )),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const SizedBox(height: 200),
                  Image.asset('assets/icons/tahwissaLogo.png',scale: 100,),
                  const SizedBox(height: 30),
                  const Text(
                    "Welcome to TAHWISSA",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        // fontFamily: 'Montserrat',
                        fontFamily: 'Cabin',
                        letterSpacing : 1.6 ,
                        ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    // "Find your perfect vacation in Algeria, \n and plan your trip.",
                    "Discover the magnificent places in Algeria \nand plan your trip.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight : FontWeight.w500,
                      color: Colors.white,
                      fontSize: 16,
                      letterSpacing: 1.1
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          elevation: 0,
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 8.0,
                          ),
                        ),
                        child: const Text(
                          "Get Started",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5 ,
                            fontSize: 16
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// Image.asset('assets/places/seraidi.JPG',width: 80)

// import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/your_image.jpg'),   // Replace with your image path
//               fit: BoxFit.cover,         // Adjust as needed
//             ),
//           ),
//           child: // Your app content here
//         ),
//       ),
//     );
//   }
// }
