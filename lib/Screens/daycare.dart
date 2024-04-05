import 'package:flutter/material.dart';
import 'package:pet_app/Screens/successful.dart';

class DayCare extends StatelessWidget {
  TextEditingController _dateController = TextEditingController();

  DayCare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/backgound.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _dateController,
                decoration: const InputDecoration(
                    hintText: "Tap to select Date",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    prefixIcon: Icon(Icons.calendar_today),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent),
                    )),
                readOnly: true,
                onTap: () {
                  _selectDate(context);
                },
              ),
              const SizedBox(height: 20),
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
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context, firstDate: DateTime(2024), lastDate: DateTime(2025));
    if (pickedDate != null) {
      // Format the pickedDate to display only the date without the time
      String formattedDate =
          "${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";
      // Update the text in the TextField
      _dateController.text = formattedDate;
    }
  }
}
