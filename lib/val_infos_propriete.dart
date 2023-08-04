import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ValidationInfosPropriete extends StatelessWidget {
  String? adresse;
  String? prixVente;
  String? typePropriete;
 String? revenus;
  String? result;

   ValidationInfosPropriete({super.key, 
      required String adresse,
      required double prixVente,
      required String typePropriete,
      required double  revenus,
      required double result
      });


  
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text("Validation des informations sur la propriete"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const SizedBox(height: 20.0),
            Text('Adresse de la propriete : $adresse',
            style: const TextStyle(fontSize: 20, color: Colors.black87)),

            const SizedBox(height: 20.0),
            Text('Prix de vente : \$ $prixVente',
            style: const TextStyle(fontSize: 20, color: Colors.black87)),

            const SizedBox(height: 20.0),
            Text('Type de propriete : $typePropriete',
            style: const TextStyle(fontSize: 20, color: Colors.black87)),


            const SizedBox(height: 20.0),  
            Text(
              'Revenus :\$ $revenus',
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

