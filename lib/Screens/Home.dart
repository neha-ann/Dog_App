import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_app/Screens/Appoinment.dart';
import 'package:pet_app/Screens/Donation.dart';
import 'package:pet_app/Screens/accessories.dart';
import 'package:pet_app/Screens/daycare.dart';
import 'package:pet_app/Screens/dogCafe.dart';
import 'package:pet_app/Screens/dogPark.dart';
import 'package:pet_app/Screens/dogShow.dart';
import 'package:pet_app/Screens/fashion.dart';
import 'package:pet_app/Screens/food.dart';
import 'package:pet_app/Screens/photography.dart';
import 'package:pet_app/Screens/toys.dart';
import 'package:pet_app/widgets/cateogory_container.dart';
import 'package:pet_app/widgets/recommended_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 175, 55),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 175, 55),
        title: Text(
          'Little Paw',
          style: GoogleFonts.aboreto(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgound.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 25),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Recommended Services",
                    style: GoogleFonts.aboreto(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      RecommendedContainer(
                          image: const AssetImage('assets/street_dog.jpg'),
                          text: 'Donate for street Dogs',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Donation()),
                            );
                          }),
                      const SizedBox(width: 10),
                      RecommendedContainer(
                          image: const AssetImage('assets/grooming.jpg'),
                          text: 'Book Appointment for grooming',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Appointment()),
                            );
                          }),
                      const SizedBox(width: 10),
                      RecommendedContainer(
                          image: const AssetImage('assets/daycare.jpg'),
                          text: 'Book Slot for daycare',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DayCare()),
                            );
                          })
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Popular",
                    style: GoogleFonts.aboreto(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      RecommendedContainer(
                          image: const AssetImage('assets/dog_park.jpg'),
                          text: 'Dog Parks',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Parks()),
                            );
                          }),
                      const SizedBox(width: 10),
                      RecommendedContainer(
                          image: const AssetImage('assets/dog_cafe.jpg'),
                          text: 'Dog Cafes',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Cafes()),
                            );
                          }),
                      const SizedBox(width: 10),
                      RecommendedContainer(
                          image: const AssetImage('assets/photography.jpg'),
                          text: 'Pet Photography',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Photography()),
                            );
                          }),
                      RecommendedContainer(
                          text: "Dog Show",
                          image: const AssetImage('assets/dog_show.jpg'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DogShow()),
                            );
                          })
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Categories",
                    style: GoogleFonts.aboreto(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    CategoryContainer(
                      image: const AssetImage('assets/dog_food.png'),
                      text: 'Food',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Food()));
                      },
                    ),
                    const SizedBox(width: 10),
                    CategoryContainer(
                      image: const AssetImage('assets/dog_toys.png'),
                      text: 'Toys',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Toys()));
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    CategoryContainer(
                      image: const AssetImage('assets/dog_accessories.png'),
                      text: 'Accessories',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Accessories()));
                      },
                    ),
                    const SizedBox(width: 10),
                    CategoryContainer(
                      image: const AssetImage('assets/dog_fashion.png'),
                      text: 'Fashion',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Fashion()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
