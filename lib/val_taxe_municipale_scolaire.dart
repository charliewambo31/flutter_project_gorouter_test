import 'package:flutter/material.dart';


class ValidationTaxeMunicipaleScoliare extends StatelessWidget {
  
  final String adresse;
  final String prixVente;

   const ValidationTaxeMunicipaleScoliare({
    Key? key,
    required this.adresse,
    required this.prixVente, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    
    // ignore: prefer_typing_uninitialized_variables
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Validation Taxe Municipale Scoliare'),
        centerTitle: true,
     backgroundColor: Colors.black45,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           // const Text('Validation des parametres de la taxe municipale et scolaire',
           // style: TextStyle(fontSize: 20,
            //color: Colors.black87)),

            //const SizedBox(height: 10.0),

            Text('Adresse de la propriété: $adresse',
            style: const TextStyle(fontSize: 20,
            color: Colors.black87)),

            const SizedBox(height: 10.0),

            Text('Prix de vente:\$ $prixVente',
             style: const TextStyle(fontSize: 20,
            color: Colors.black87)),

             const SizedBox(height: 10.0),

          Text('La taxe municipale scolaire est :\$ $prixVente',
             style: const TextStyle(fontSize: 20,
            color: Colors.black87)),
           
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