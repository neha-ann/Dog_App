import 'package:flutter/material.dart';
import 'package:pet_app/widgets/cafesAndParks.dart';

class Photography extends StatelessWidget {
  Photography({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Photography'),
        backgroundColor: const Color.fromARGB(255, 241, 179, 85),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/backgound.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: const Column(
            children: [
              cafesAndParks(
                  image: "assets/photography.jpg",
                  textName: "Paws & Pours Studio",
                  textAddress: "Melbourne, Australia"),
              cafesAndParks(
                  image: "assets/photography_1.jpg",
                  textName: "The Wagging Tail ",
                  textAddress: "Perth, Australia"),
              cafesAndParks(
                  image: "assets/photography_2.jpg",
                  textName: "Bark & Brew ",
                  textAddress: "Melbourne, Australia"),
              cafesAndParks(
                  image: "assets/dog_cafe_3.jpg",
                  textName: "Paws & Pours Studio",
                  textAddress: "Perth, Australia"),
              cafesAndParks(
                  image: "assets/photography.jpg",
                  textName: "The Wagging Tail",
                  textAddress: "Melbourne, Australia"),
              cafesAndParks(
                  image: "assets/dog_cafe_1.jpg",
                  textName: "Doggy Diner Studio",
                  textAddress: "Perth, Australia"),
              cafesAndParks(
                  image: "assets/photography_1.jpg",
                  textName: "Paws & Pours ",
                  textAddress: "Sydney, Australia"),
            ],
          ),
        ),
      ),
    );
  }
}
