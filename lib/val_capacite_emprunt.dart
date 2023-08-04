import 'package:flutter/material.dart';

class ValidationCapaciteEmprunt extends StatelessWidget {
  final double capacity;
  final double annualIncome;
  final double existingLoans;

  const ValidationCapaciteEmprunt(
      {Key? key, 
      required this.capacity, 
      required this.annualIncome, 
      required this.existingLoans})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Validation Capacite Emprunt'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const SizedBox(height: 20.0),
            Text('Revenu annuel : \$ $annualIncome',
                style: const TextStyle(fontSize: 20, color: Colors.black87)),

                 const SizedBox(height: 20.0),
            Text('Prets existants : \$ $existingLoans',
                style: const TextStyle(fontSize: 20, color: Colors.black87)),

               const SizedBox(height: 20.0),  
            Text(
              'Capacité d\'emprunt :\$ $capacity',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Retour'), 
            ),
          ],
        ),
      ),
    );
  }
}
