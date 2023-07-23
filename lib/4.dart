import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(PrimeCheckerApp());

class PrimeCheckerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kiểm tra số nguyên tố',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PrimeCheckerScreen(),
    );
  }
}

class PrimeCheckerScreen extends StatefulWidget {
  @override
  _PrimeCheckerScreenState createState() => _PrimeCheckerScreenState();
}

class _PrimeCheckerScreenState extends State<PrimeCheckerScreen> {
  int number = 0;
  bool isPrime = false;

  void checkPrime() {
    setState(() {
      isPrime = isNumberPrime(number);
    });
  }

  bool isNumberPrime(int number) {
    if (number < 2) {
      return false;
    }

    for (int i = 2; i <= sqrt(number); i++) {
      if (number % i == 0) {
        return false;
      }
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kiểm tra số nguyên tố'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nhập số cần kiểm tra:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  number = int.tryParse(value) ?? 0;
                });
              },
              decoration: InputDecoration(
                labelText: 'Số',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: checkPrime,
              child: Text('Kiểm tra'),
            ),
            SizedBox(height: 16),
            Text(
              isPrime ? 'Đây là số nguyên tố' : 'Đây không phải số nguyên tố',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
