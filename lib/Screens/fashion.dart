import 'package:flutter/material.dart';
import 'package:pet_app/widgets/items.dart';

class Fashion extends StatelessWidget {
  const Fashion({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Food'),
            backgroundColor: Color.fromARGB(255, 255, 219, 165),
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
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        ItemCard(
                            image: "assets/dog_toys1.png",
                            textName: "Barkaritaville Archives",
                            textPrice: "\$10"),
                        SizedBox(width: 20),
                        ItemCard(
                            image: "assets/dog_toys3.png",
                            textName: "Waterfowl Squeaky Dog Toy",
                            textPrice: "\$15"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        ItemCard(
                            image: "assets/dog_toys2.png",
                            textName: "Dog Boredom Toy",
                            textPrice: "\$17"),
                        SizedBox(width: 20),
                        ItemCard(
                            image: "assets/dog_toys4.png",
                            textName: "Dog Toys",
                            textPrice: "\$20"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        ItemCard(
                            image: "assets/dog_toys3.png",
                            textName: "Waterfowl Squeaky Dog Toy",
                            textPrice: "\$10"),
                        SizedBox(width: 20),
                        ItemCard(
                            image: "assets/dog_toys1.png",
                            textName: "Barkaritaville Archives",
                            textPrice: "\$20"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        ItemCard(
                            image: "assets/dog_toys4.png",
                            textName: "Dog Toys",
                            textPrice: "\$10"),
                        SizedBox(width: 20),
                        ItemCard(
                            image: "assets/dog_toys2.png",
                            textName: "Dog Boredom Toy",
                            textPrice: "\$10"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
