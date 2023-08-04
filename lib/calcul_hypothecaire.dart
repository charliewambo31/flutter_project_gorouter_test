import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_project_gorouter_test/capacite_emprunt.dart';
import 'package:flutter_project_gorouter_test/home.dart';
import 'package:flutter_project_gorouter_test/infos_propriete.dart';
import 'package:flutter_project_gorouter_test/login.dart';
import 'package:flutter_project_gorouter_test/simulation_rentabilite.dart';
import 'package:flutter_project_gorouter_test/taxe_bienvenue.dart';
import 'package:flutter_project_gorouter_test/taxe_municipale_scolaire.dart';
import 'package:flutter_project_gorouter_test/val_calcul_hypothecaire.dart';



class CalculHypothecairePage extends StatefulWidget {
  const CalculHypothecairePage({super.key, required String name});
  @override
  // ignore: library_private_types_in_public_api
  _CalculHypothecairePageState createState() => _CalculHypothecairePageState();
}

class _CalculHypothecairePageState extends State<CalculHypothecairePage> {
  final _formKey = GlobalKey<FormState>();
  double? _prixVente ;
  double? _miseFond ;
  double? _dureePret;
  double? _tauxInteret;

  double  _result = 0;

  /////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Drawer(
      child: ListView(
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                child: CircleAvatar(
                  radius: 65,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/house.png",
                      width: 130,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'My home page',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
          const SizedBox(
                height: 8.0,
                width: double.infinity,
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.black87,
                  size: 30,
                ),
                title: const Text('page d\'accueil'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(
                          name: 'page d\'accueil'),
                    ),
                  );
                },
              ),
 
           const SizedBox(height: 8.0,width: double.infinity,),
              ListTile(
                 leading: const Icon(
                 Icons.business,
                color: Colors.black87,
                size: 30,
              ),
                title: const Text('Simulation Rentabilite'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SimulationRentabilitePage(name: 'Simulation de la rentabilite'),
                    ),
                  );
                },
              ),
    
               const SizedBox(height: 8.0,width: double.infinity,),
              ListTile(
                 leading: const Icon(
               Icons.account_tree,
                color: Colors.black87,
                size: 30,
              ),
                title: const Text('Taxe de bienvenue'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TaxeBienvenuePage(name: 'Taxe de bienvenue'),
                    ),
                  );
                },
              ),
              
               const SizedBox(height: 8.0,width: double.infinity,),
              ListTile(
                 leading: const Icon(
                Icons.account_balance,
                color: Colors.black87,
                size: 30,
              ),
                title: const Text('Calcul hypothecaire'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CalculHypothecairePage(name: 'Calcul hypothecaire'),
                    ),
                  );
                },
              ),
    
      
               const SizedBox(height: 8.0,width: double.infinity,),
              ListTile(
                 leading: const Icon(
                Icons.account_circle,
                color: Colors.black87,
                size: 30,
              ),
                title: const Text('Taxes municipale et scolaire'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TaxeMuniScolairePage(name: 'Taxes municipale et scolaire'),
                    ),
                  );
                },
              ),
    
    
    
    const SizedBox(height: 8.0,width: double.infinity,),
              ListTile(
                 leading: const Icon(
                Icons.account_box,
                color: Colors.black87,
                size: 30,
              ),
                title: const Text('Calcul capacite emprunt'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CapaciteEmpruntPage(name: 'Calcul capacite emprunt'),
                    ),
                  );
                },
              ),
    
     
                      const SizedBox(height: 8.0,width: double.infinity,),
              ListTile(
                 leading: const Icon(
                Icons.no_accounts,
                color: Colors.black87,
                size: 30,
              ),
                title: const Text('Informations sur une proprieté'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InfosProprietePage(name: 'Informations sur une proprieté'),
                    ),
                  );
                },
              ),
    
            
                      const SizedBox(height: 24.0,width: double.infinity,),
                      const Divider(color: Colors.grey),
              ListTile(
                 leading: const Icon(
                (Icons.logout),
                color: Colors.black87,
                size: 30,
              ),
                title: const Text('Deconnexion'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(name: 'Deconnexion'),
                    ),
                  );
                },
              ),


            ],
          ),
        ),
//       appBar: AppBar(
//         title: const Text('Calcul hypothecaire'),
//         centerTitle: true,
//         backgroundColor: Colors.pink,
        
//       ),
//       body: Form(
//         key: _formKey,
//         child: ListView(
//           padding: const EdgeInsets.all(16.0),
//           children: <Widget>[
//              const SizedBox(
//             height: 10,
//           ),
//             TextFormField(
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: 'Prix de vente',
//                 hintText: 'Entrez prix de vente',
//                 border: OutlineInputBorder(),
//               ),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Veuillez saisir un prix de vente.';
//                 }
//                 if (double.tryParse(value) == null) {
//                   return 'Veuillez saisir un nombre valide.';
//                 }
//                 return null;
//               },
//               onSaved: (value) {
//                  _prixVente = double.parse(value!);
//               },
//             ),
//              const SizedBox(
//             height: 10,
//           ),
//             TextFormField(
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                   labelText: 'Mise de fond',
//                   hintText: 'Entrez mise de fond',
//                   border: OutlineInputBorder()),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Veuillez saisir une mise de fond.';
//                 }
//                 if (double.tryParse(value) == null) {
//                   return 'Veuillez saisir un nombre valide.';
//                 }
//                 if (double.parse(value) >_prixVente!) {
//                   return 'La mise de fond ne peut pas dépasser le prix de vente.';
//                 }
//                 return null;
//               },
//               onSaved: (value) {
//                 _miseFond = double.parse(value!);
//               },
//             ),
//              const SizedBox(
//             height: 10,
//           ),
//             TextFormField(
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                   labelText: 'Durée du prêt (années)',
//                   hintText: 'Entrez durée du prêt',
//                   border: OutlineInputBorder()),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Veuillez saisir une durée du prêt.';
//                 }
//                 if (int.tryParse(value) == null) {
//                   return 'Veuillez saisir un nombre entier valide.';
//                 }
//                 return null;
//               },
//               onSaved: (value) {
//                 _dureePret = int.parse(value!) as double;
//               },
//             ),
//              const SizedBox(
//             height: 10,
//           ),
//             TextFormField(
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: 'Taux d\'intérêt',
//                 hintText: 'Entrez Taux d\'intérêt',
//                 border: OutlineInputBorder(),
//               ),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Veuillez saisir un taux d\'intérêt.';
//                 }
//                 if (double.tryParse(value) == null) {
//                   return 'Veuillez saisir un nombre valide.';
//                 }
//                 return null;
//               },
//               onSaved: (value) {
//                 _tauxInteret = double.parse(value!);
//               },
//             ),
//              const SizedBox(
//             height: 10,
//           ),
//             ElevatedButton(
//               onPressed: () {
//                 if (_formKey.currentState!.validate()) {
//                   _formKey.currentState?.save();
//   ////////////////////////////////////////////////////
//                   calculateLoan();
//   ///////////////////////////////////////////////
//    ///////////////////////////////////////////////////////
//                         // Afficher le résultat
//                         showDialog(
//                           context: context,
//                           builder: (BuildContext context) {
//                             return AlertDialog(
//                               title: const Text('Résultat'),
//                               content: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: [
//                                   Text('Prix de vente: $_prixVente'),
//                                   Text('Mise de fond: $_miseFond'),
//                                   Text('Durée du prêt (années): $_dureePret'),
//                                   Text('Taux d\'intérêt: $_tauxInteret'),
//                                  ////////////////////////////////
 
//                                  /////////////////////////////
//                                 ],
//                               ),
//                               actions: [
//                                 TextButton(
//                                   onPressed: () {
//                                     Navigator.of(context).pop();
//                                   },
//                                   child: const Text('Fermer'),
//                                 ),
//                               ],
//                             );
//                           },
//                         );
//  ///////////////////////////////////////////////////////////////////
//        Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) =>  ValidationCalculHypothecaire( 
//             miseFond: _miseFond!, 
//             prixVente: _prixVente!,
          
//           tauxInteret: _tauxInteret!, 
//           result: _result, 
//           dureePret: _dureePret!,),
     
//         ),
//       );


//  ///////////////////////////////////////////////////////////////////
//   //////////////////////////////////////////////
//                 }
//               },
//               child: const Text('Calculer'),
//             ),
//             Text(
//               'Résultat : $_result',
//               style: const TextStyle(
//                   fontSize: 18.0,
//                   fontWeight: FontWeight.bold,
//                   //fontSize: 18.0,
//                   height: 10.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

  
//   void calculateLoan() {
//     // Perform the loan calculation based on the entered values
//     double loanAmount = _prixVente! - _miseFond!;
//     double monthlyInterest = _tauxInteret! / 12 / 100;
//     double numberOfPayments = _dureePret! * 12;

//     double monthlyPayment = (loanAmount * monthlyInterest) /
//         (1 - (1 / pow(1 + monthlyInterest, numberOfPayments)));

//     setState(() {
//       _result = monthlyPayment;
//     });
//   }
// }

// ///
 appBar: AppBar(
        title: const Text('Calcul hypothecaire'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Prix de vente',
                hintText: 'Entrez prix de vente',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Veuillez saisir un prix de vente.';
                }
                if (double.tryParse(value) == null) {
                  return 'Veuillez saisir un nombre valide.';
                }
                return null;
              },
              onSaved: (value) {
                _prixVente = double.parse(value!);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: 'Mise de fond',
                  hintText: 'Entrez mise de fond',
                  border: OutlineInputBorder()),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Veuillez saisir une mise de fond.';
                }
                if (double.tryParse(value) == null) {
                  return 'Veuillez saisir un nombre valide.';
                }
                if (double.parse(value) > _prixVente!) {
                  return 'La mise de fond ne peut pas dépasser le prix de vente.';
                }
                return null;
              },
              onSaved: (value) {
                _miseFond = double.parse(value!);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: 'Durée du prêt (années)',
                  hintText: 'Entrez durée du prêt',
                  border: OutlineInputBorder()),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Veuillez saisir une durée du prêt.';
                }
                if (int.tryParse(value) == null) {
                  return 'Veuillez saisir un nombre entier valide.';
                }
                return null;
              },
              onSaved: (value) {
                _dureePret = double.parse(value!);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Taux d\'intérêt',
                hintText: 'Entrez Taux d\'intérêt',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Veuillez saisir un taux d\'intérêt.';
                }
                if (double.tryParse(value) == null) {
                  return 'Veuillez saisir un nombre valide.';
                }
                return null;
              },
              onSaved: (value) {
                _tauxInteret = double.parse(value!);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState?.save();
                  calculateLoan();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ValidationCalculHypothecaire(
                        miseFond: _miseFond!,
                        prixVente: _prixVente!,
                        tauxInteret: _tauxInteret!,
                        result: _result,
                        dureePret: _dureePret!,
                      ),
                    ),
                  );
                }
              },
              child: const Text('Calculer'),
            ),
            Text(
              'Résultat : $_result',
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void calculateLoan() {
    // Perform the loan calculation based on the entered values
    double loanAmount = _prixVente! - _miseFond!;
    double monthlyInterest = _tauxInteret! / 12 / 100;
    double numberOfPayments = _dureePret! * 12;

    double monthlyPayment = (loanAmount * monthlyInterest) /
        (1 - (1 / pow(1 + monthlyInterest, numberOfPayments)));

    setState(() {
      _result = monthlyPayment;
    });
  }
}
