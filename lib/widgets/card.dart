// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CreditCardForm extends StatefulWidget {
  const CreditCardForm({super.key});

  @override
  _CreditCardFormState createState() => _CreditCardFormState();
}

class _CreditCardFormState extends State<CreditCardForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 243, 215, 169),
      ),
      child: const Column(
        children: [
          SizedBox(
            width: double.infinity, // Ensure TextField takes full width
            child: TextField(
              decoration: InputDecoration(hintText: 'XXXX-XXXX-XXXX-XXXX'),
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity, // Ensure TextField takes full width
            child: TextField(
              decoration: InputDecoration(hintText: 'Card Holder Name'),
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity, // Ensure TextField takes full width
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Expiry Date'),
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10), // Add spacing between TextFields
              Expanded(
                child: SizedBox(
                  width: double.infinity, // Ensure TextField takes full width
                  child: TextField(
                    decoration: InputDecoration(hintText: 'CVV'),
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
