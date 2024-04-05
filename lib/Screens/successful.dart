import 'package:flutter/material.dart';
import 'package:pet_app/Screens/Home.dart';

class Success extends StatefulWidget {
  @override
  _Success createState() => _Success();
}

class _Success extends State<Success> {
  bool _paymentSuccess = false;

  @override
  void initState() {
    super.initState();
    // Simulate payment success after a delay
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _paymentSuccess = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment Screen',
        ),
        backgroundColor: const Color.fromARGB(255, 255, 175, 55),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/backgound.jpg"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _paymentSuccess
                  ? const Column(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 50,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Successfully Booked Slot',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                      ],
                    )
                  : const CircularProgressIndicator(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text('Go to Home'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
