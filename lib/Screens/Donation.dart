import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_app/Screens/CardDetial.dart';

class Donation extends StatelessWidget {
  final TextEditingController donationController = TextEditingController();
  Donation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/backgound.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                "Enter the donation Amount",
                style: GoogleFonts.aboreto(
                  fontSize: 30,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: TextField(
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Enter the amount",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 201, 201, 201)),
                  ),
                  controller: donationController,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                  child: const Text("Donate Now"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CardDetails()));
                  }),
            ],
          )),
    );
  }
}
