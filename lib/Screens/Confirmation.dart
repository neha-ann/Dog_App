import 'package:flutter/material.dart';
import 'package:pet_app/Screens/CardDetial.dart';

class Confirmation extends StatelessWidget {
  final image;
  final String textName;
  final String textPrice;
  const Confirmation(
      {super.key, this.image, required this.textName, required this.textPrice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/backgound.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 200,
              width: double.infinity,
            ),
            const SizedBox(height: 20),
            Text(
              textName,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              textPrice,
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Go Back",
                      style: TextStyle(fontSize: 20),
                    )),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CardDetails()));
                    },
                    child: const Text(
                      "Buy",
                      style: TextStyle(fontSize: 20),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
