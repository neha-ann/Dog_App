// ignore_for_file: prefer_final_fields, library_private_types_in_public_api, use_super_parameters

import 'package:flutter/material.dart';
import 'package:pet_app/Screens/successful.dart';

class Appointment extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Appointment({Key? key}) : super(key: key);

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  TextEditingController _dateController = TextEditingController();

  // List of time options
  final List<String> timeOptions = [
    '9am',
    '10am',
    '11am',
    '12pm',
    '2pm',
    '3pm',
    '4pm',
    '5pm',
    '6pm',
    '7pm',
  ];

  // Track the selected time
  String? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/backgound.jpg"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Select Date",
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _dateController,
                  decoration: const InputDecoration(
                    hintText: 'Tap to select the date',
                    filled: true,
                    prefixIcon: Icon(Icons.calendar_today),
                  ),
                  readOnly: true,
                  onTap: () {
                    _selectDate(context);
                  },
                ),
                const SizedBox(height: 40),
                const Text(
                  "Select Slot",
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 40),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: timeOptions
                      .map((time) => ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedTime = time;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (time == selectedTime) {
                                  return const Color.fromARGB(255, 248, 212,
                                      145); // Change color when selected
                                }
                                return const Color.fromARGB(
                                    255, 255, 255, 255); // Default color
                              }),
                            ),
                            child: Text(time),
                          ))
                      .toList(),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Success()));
                    },
                    child: const Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context, firstDate: DateTime(2024), lastDate: DateTime(2025));
    if (pickedDate != null) {
      String formattedDate =
          "${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";

      _dateController.text = formattedDate;
    }
  }
}
