import 'package:flutter/material.dart';
import 'package:pet_app/widgets/cafesAndParks.dart';

class Cafes extends StatelessWidget {
  const Cafes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dog Friendly Cafes'),
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
                  image: "assets/dog_cafe.jpg",
                  textName: "Paws & Pours Cafe",
                  textAddress: "Melbourne, Australia"),
              cafesAndParks(
                  image: "assets/dog_cafe_1.jpg",
                  textName: "The Wagging Tail Cafe",
                  textAddress: "Perth, Australia"),
              cafesAndParks(
                  image: "assets/dog_cafe_2.jpg",
                  textName: "Bark & Brew Cafe",
                  textAddress: "Melbourne, Australia"),
              cafesAndParks(
                  image: "assets/dog_cafe_3.jpg",
                  textName: "Paws & Pours Cafe",
                  textAddress: "Perth, Australia"),
              cafesAndParks(
                  image: "assets/dog_cafe.jpg",
                  textName: "The Wagging Tail Cafe",
                  textAddress: "Melbourne, Australia"),
              cafesAndParks(
                  image: "assets/dog_cafe_1.jpg",
                  textName: "Doggy Diner Cafe",
                  textAddress: "Perth, Australia"),
              cafesAndParks(
                  image: "assets/dog_cafe_2.jpg",
                  textName: "Paws & Pours Cafe",
                  textAddress: "Sydney, Australia"),
            ],
          ),
        ),
      ),
    );
  }
}
