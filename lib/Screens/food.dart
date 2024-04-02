import 'package:flutter/material.dart';
import 'package:pet_app/widgets/items.dart';

class Food extends StatelessWidget {
  const Food({super.key});

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
                            image: "assets/dog_food1.jpg",
                            textName: "Milk-Bone Soft & Chewy Dog Treats",
                            textPrice: "\$15"),
                        SizedBox(width: 20),
                        ItemCard(
                            image: "assets/dog_food3.jpg",
                            textName: "BRIT JERKY Salmon Protein Bar 80g",
                            textPrice: "\$5"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        ItemCard(
                            image: "assets/dog_food2.jpg",
                            textName: "SmartBones Mini Chews Meat & Vegetables",
                            textPrice: "\$10"),
                        SizedBox(width: 20),
                        ItemCard(
                            image: "assets/dog_food4.jpg",
                            textName: "BRIT JERKY Beef Fillets 80g",
                            textPrice: "\$5"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        ItemCard(
                            image: "assets/dog_food3.jpg",
                            textName: "BRIT JERKY Salmon Protein Bar 80g",
                            textPrice: "\$15"),
                        SizedBox(width: 20),
                        ItemCard(
                            image: "assets/dog_food2.jpg",
                            textName: "SmartBones Mini Chews Meat & Vegetables",
                            textPrice: "\$5"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        ItemCard(
                            image: "assets/dog_food4.jpg",
                            textName: "BRIT JERKY Beef Fillets 80g",
                            textPrice: "\$10"),
                        SizedBox(width: 20),
                        ItemCard(
                            image: "assets/dog_food1.jpg",
                            textName: "Milk-Bone Soft & Chewy Dog Treats",
                            textPrice: "\$5"),
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
