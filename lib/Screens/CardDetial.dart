import 'package:flutter/material.dart';
import 'package:pet_app/Screens/Success.dart';
import 'package:pet_app/widgets/card.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Details'),
        backgroundColor: const Color.fromARGB(255, 255, 175, 55),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/backgound.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 200,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8, top: 10),
                  child: CreditCardForm(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentScreen()));
                },
                child: const Text("Proceed"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
