import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class ValidationCalculHypothecaire extends StatelessWidget {
//   double? tauxInteret;
//   double? miseFond;
//   double? dureePret;
//   double? result;
//   double?  prixVente;
//   //final double title;
//   ValidationCalculHypothecaire(
//       {super.key,
//       required double tauxInteret,
//       required double miseFond,
//       required double dureePret,
//       required double result,
//       required double prixVente});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Validation du calcul hypothecaire"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(height: 20.0),
//             Text('Prix de vente : \$ $prixVente',
//                 style: const TextStyle(fontSize: 20, color: Colors.black87)),


//             const SizedBox(height: 20.0),
//             Text('Mise de fond : \$ $miseFond',
//                 style: const TextStyle(fontSize: 20, color: Colors.black87)),


//             const SizedBox(height: 20.0),
//             Text(
//               'Duree du pret :\$ $dureePret',
//               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
// ////////////////////////////////////////////

// /////////////////////////////////////////////

//             const SizedBox(height: 20.0),
//             Text(
//               'Taux d\'interet :\$ $tauxInteret',
//               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),


//             const SizedBox(height: 20.0),
//             Text(
//               'Resultat :\$ $result ',
//               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),


//             const SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: const Text('Retour'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// ignore: must_be_immutable
class ValidationCalculHypothecaire extends StatelessWidget {
  double miseFond;
  double prixVente;
   double  tauxInteret;
   double  result;
   double  dureePret;

   ValidationCalculHypothecaire({super.key, 
    required this.miseFond,
    required this.prixVente,
    required this.tauxInteret,
    required this.result,
    required this.dureePret,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Validation Calcul Hypothecaire'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Prix de vente: $prixVente'),
            Text('Mise de fond: $miseFond'),
            Text('Durée du prêt (années): $dureePret'),
            Text('Taux d\'intérêt: $tauxInteret'),
            Text('Résultat: $result'),
          ],
        ),
      ),
    );
  }
}