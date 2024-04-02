import 'package:flutter/material.dart';
import 'package:pet_app/widgets/cafesAndParks.dart';

class DogShow extends StatelessWidget {
  const DogShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upcoming Dog Show'),
        backgroundColor: Color.fromARGB(255, 241, 179, 85),
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
                  image: "assets/dog_show_3.jpg",
                  textName: "Paws & Pours ",
                  textAddress: "Melbourne, Australia"),
              cafesAndParks(
                  image: "assets/dog_show_2.jpg",
                  textName: "The Wagging Tail ",
                  textAddress: "Perth, Australia"),
              cafesAndParks(
                  image: "assets/dog_show_1.jpg",
                  textName: "Bark & Brew ",
                  textAddress: "Melbourne, Australia"),
              cafesAndParks(
                  image: "assets/dog_show.jpg",
                  textName: "Paws & Pours ",
                  textAddress: "Perth, Australia"),
              cafesAndParks(
                  image: "assets/dog_show_1.jpg",
                  textName: "The Wagging Tail ",
                  textAddress: "Melbourne, Australia"),
              cafesAndParks(
                  image: "assets/dog_show_2.jpg",
                  textName: "Doggy Diner ",
                  textAddress: "Perth, Australia"),
              cafesAndParks(
                  image: "assets/dog_show_3.jpg",
                  textName: "Paws & Pours ",
                  textAddress: "Sydney, Australia"),
            ],
          ),
        ),
      ),
    );
  }
}
