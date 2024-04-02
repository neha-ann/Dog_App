import 'package:flutter/material.dart';
import 'package:pet_app/Screens/Confirmation.dart';

class ItemCard extends StatefulWidget {
  final image;
  final String textName, textPrice;
  const ItemCard(
      {super.key,
      required this.image,
      required this.textName,
      required this.textPrice});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Confirmation(
                        image: widget.image,
                        textName: widget.textName,
                        textPrice: widget.textPrice,
                      )));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 248, 236, 217),
              borderRadius: BorderRadius.circular(20)),
          height: 200,
          width: 160,
          child: Column(
            children: [
              Image.asset(
                widget.image,
                height: 100,
                width: 100,
              ),
              Text(
                widget.textName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                widget.textPrice,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )
            ],
          ),
        ),
      ),
    );
  }
}
