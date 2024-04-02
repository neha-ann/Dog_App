import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryContainer extends StatefulWidget {
  final image;
  final String text;
  final void Function() onTap;
  const CategoryContainer(
      {super.key, this.image, required this.text, required this.onTap});

  @override
  State<CategoryContainer> createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 255, 219, 165),
          ),
          height: 150,
          width: 180,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: widget.image,
                height: 100,
                width: 100,
              ),
              Text(widget.text,
                  style: GoogleFonts.aboreto(
                    fontSize: 24,
                  )),
            ],
          )),
    );
  }
}
