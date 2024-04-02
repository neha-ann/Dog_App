import 'package:flutter/material.dart';
import 'package:pet_app/widgets/cafesAndParks.dart';

class Parks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dog Park',
        ),
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              cafesAndParks(
                image: "assets/dog_park_3.jpg",
                textName: "Hooman Dogs Park",
                textAddress: "Sydney, Australia",
              ),
              cafesAndParks(
                image: "assets/dog_park_2.jpg",
                textName: "Central Park",
                textAddress: "California, USA",
              ),
              cafesAndParks(
                image: "assets/dog_park_1.jpg",
                textName: "Hyde Park",
                textAddress: "London, UK",
              ),
              cafesAndParks(
                image: "assets/dog_park_3.jpg",
                textName: "High Park",
                textAddress: "London, UK",
              ),
              cafesAndParks(
                image: "assets/dog_park_2.jpg",
                textName: "Vondelpark",
                textAddress: "California, USA",
              ),
              cafesAndParks(
                image: "assets/dog_park_2.jpg",
                textName: "Central Park",
                textAddress: "California, USA",
              ),
              cafesAndParks(
                image: "assets/dog_park_3.jpg",
                textName: "High Park",
                textAddress: "London, UK",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
