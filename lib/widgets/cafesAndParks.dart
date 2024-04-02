// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class cafesAndParks extends StatefulWidget {
  final String image;
  final String textName;
  final String textAddress;

  const cafesAndParks({
    super.key,
    required this.image,
    required this.textName,
    required this.textAddress,
  });

  @override
  State<cafesAndParks> createState() => _cafesAndParksState();
}

class _cafesAndParksState extends State<cafesAndParks> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 130,
        width: 2000,
        color: Color.fromARGB(255, 255, 219, 165),
        child: Row(
          children: [
            Image.asset(
              widget.image,
              width: 100,
              height: 100,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.textName,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.textAddress,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset(
                'assets/location.png',
                height: 40,
                width: 40,
              ),
            )
          ],
        ),
      ),
    );
  }
}
