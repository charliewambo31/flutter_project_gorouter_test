

// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable, no_logic_in_create_state, unnecessary_import, unused_field, unused_element

import 'package:flutter/material.dart';
//import 'package:go_router/go_router.dart';

import 'dart:ui';

  // ignore: library_private_types_in_public_api
  
class MultiformPage extends StatefulWidget {
  const MultiformPage({Key? key, required this.name}) : super(key: key);
  final String name;
 
  
  @override
 // ignore: library_private_types_in_public_api
 State<StatefulWidget> createState() => _MultiformPageState();

 
}

class _MultiformPageState extends State<MultiformPage> {
  final _formKey = GlobalKey<FormState>();
  late final double _prixDeVente;
  late final double _miseDeFond;
  late final double _taxeDeBienvenue;
  late final double _assurance;
  late final double _fraisNotaire;
  late final double _autresFrais;
  late final double _revenusLocatifs;
  late final double _totalTaxes;
  late final double _electricite;
  late final double _conciergerie;
  late final double _assuranceSchl;
  late final double miseDeFond;
  late final double fraisGestion;
  late final double _entretien;
 late final double _tauxInterets;
 late final double _dureeDuPret;
 late final double _termeDuPret;
  late final double _tauxDeVacances;
  late final double _mauvaiseCreance;
  late final double _paiementExtra;
  late final double _periodeDeSimulation;
 late final double _augmentationLoyer;
  late final double _augmentationTaxes;
 late final double _prochainTauxInterets;
  late final double _augmentationDuLoyer;
  late final double _appreciationAnnuel;
  late final double _tauxInflation;
  late final double _autreFrais;
  late final double _autresRevenus;

  int _currentPage = 0;

  final List<Widget> pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  // ignore: non_constant_identifier_names
 // _MultiPageFormState(this._electricite);

  void nextPage() {
    setState(() {
      if (_currentPage < pages.length - 1) {
        _currentPage++;
      }
    });
  }

  void previousPage() {
    setState(() {
      if (_currentPage > 0) {
        _currentPage--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
       title: const Text('Formulaire multipages '),
        backgroundColor: Colors.orangeAccent,
        // leading: IconButton(
        //     onPressed: () {
        //       const Drawer();
        //     },
        //     icon: IconButton(onPressed: () {}, icon: const Icon(Icons.menu))),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        child: Form(
          key: _formKey,
          child: pages[_currentPage],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (_currentPage > 0)
              IconButton(
                onPressed: previousPage,
                icon: const Icon(Icons.arrow_back),
              ),
            if (_currentPage < pages.length - 1)
              IconButton(
                onPressed: nextPage,
                icon: const Icon(Icons.arrow_forward),
              ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListView(
        children: [
          DataTable(
            columns: const [
              DataColumn(
                label: Text(
                  'Investissement initial',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    fontFamily: 'Raleway',
                    textBaseline: TextBaseline.alphabetic,
                  ),
                ),
                numeric: true,
              ),
            ],
            rows: const [],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Prix de vente',
                    suffixIcon: Icon(Icons.attach_money),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _prixDeVente = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
         const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Taxe de bienvenue ',
                    suffixIcon: Icon(Icons.attach_money),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _taxeDeBienvenue = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          //const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Frais du notaire ',
                    suffixIcon: Icon(Icons.attach_money),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _fraisNotaire = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
         const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Revenus Locatifs  ',
                    suffixIcon: Icon(Icons.attach_money),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _revenusLocatifs = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Total taxes ',
                    suffixIcon: Icon(Icons.attach_money),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _totalTaxes = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
         const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Electricite ',
                    suffixIcon: Icon(Icons.attach_money),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _electricite = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
         const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Conciergerie ',
                    suffixIcon: Icon(Icons.attach_money),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _conciergerie = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          DataTable(
            columns: const [
              DataColumn(
                label: Text(
                  'Revenus/Frais recurrents annuels',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    fontFamily: 'Raleway',
                    textBaseline: TextBaseline.alphabetic,
                  ),
                ),
                numeric: true,
              ),
            ],
            rows: const [],
          ),
         const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mise de fond',
                    suffixIcon: Icon(Icons.attach_money),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _miseDeFond = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
       const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Assurance(SCHL)',
                    suffixIcon: Icon(Icons.attach_money),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _assuranceSchl = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
      const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Autres frais ',
                    suffixIcon: Icon(Icons.attach_money),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _autreFrais = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
         const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //const SizedBox(width: 12.0),
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Autres revenus ',
                    suffixIcon: Icon(Icons.attach_money),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _autresRevenus = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
        const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Assurance',
                    suffixIcon: Icon(Icons.attach_money),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _assurance = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
        const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  const SizedBox(height: 12.0),
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Frais de gestion',
                    suffixIcon: Icon(Icons.attach_money),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _fraisGestion = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
        const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Entretien ',
                    suffixIcon: Icon(Icons.attach_money),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _entretien = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  // Your code for Page3 and the setState calls go here
  // ...
//}

//class Page3 extends StatelessWidget {
  //const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          DataTable(
            columns: const [
              DataColumn(
                label: Text(
                  'Financements',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    fontFamily: 'Raleway',
                    textBaseline: TextBaseline.alphabetic,
                  ),
                ),
                numeric: true,
              ),
            ],
            rows: const [],
          ),

         const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Taux interet',
                      suffixIcon: Icon(Icons.percent_outlined)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _augmentationLoyer = double.parse(value!);
                  },
                ),
              ),
            ],
          ),

         const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Duree du pret ',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _periodeDeSimulation = double.parse(value!);
                  },
                ),
              ),
            ],
          ),

         const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Terme du pret ',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _periodeDeSimulation = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
        const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Taux de Vacances',
                      suffixIcon: Icon(Icons.percent_outlined)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _augmentationLoyer = double.parse(value!);
                  },
                ),
              ),
            ],
          ),

         const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mauvaise Creance ',
                      suffixIcon: Icon(Icons.percent_outlined)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _augmentationLoyer = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
         const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Paiement Extra ',
                      suffixIcon: Icon(
                        Icons.attach_money,
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _periodeDeSimulation = double.parse(value!);
                  },
                ),
              ),
            ],
          ),

          // const SizedBox(width: 12.0),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     const Text(
          //       'Taux de placements :',
          //       style: TextStyle(fontSize: 20),
          //     ),
          //     //  const Text('Down Payment'),
          //     const SizedBox(height: 16),
          //     Center(
          //       child: Column(
          //         children: [
          //           // Text(
          //           //   'Slider Value: $downPayment',
          //           //   style: const TextStyle(fontSize: 20),
          //           // ),
          //           const SizedBox(height: 16),
          //           Slider(
          //             value: _downPayment,
          //             min: 0.0,
          //             max: 100.0,
          //             divisions: 100,
          //             label: "${_downPayment.toStringAsFixed(0)}%",
          //             onChanged: (double newValue) {
          //               setState(() {
          //                 _downPayment = newValue;
          //               });
          //             },
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          // const SizedBox(width: 16.0),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     const Expanded(
          //       child: Text(
          //         'placements :',
          //         style: TextStyle(fontSize: 20),
          //       ),
          //     ),
          //     //  const Text('Down Payment'),
          //     const SizedBox(height: 16),
          //     Expanded(
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: <Widget>[
          //           Text(
          //             'Valeur sélectionnée: ${_value.round().toString()}%',
          //             style: const TextStyle(fontSize: 18.0),
          //           ),
          //           Slider(
          //             value: _value,
          //             //min: 0.0,
          //             max: 100.0,
          //             divisions: 100,
          //             onChanged: (double newValue) {
          //               setState(() {
          //                 _value = newValue;
          //               });
          //             },
          //             label:
          //                 '${_value.round().toString()}%', // Affiche le pourcentage sélectionné
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          DataTable(
            columns: const [
              DataColumn(
                label: Text(
                  'Placements',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    fontFamily: 'Raleway',
                    textBaseline: TextBaseline.alphabetic,
                  ),
                ),
                numeric: true,
              ),
            ],
            rows: const [],
          ),
         const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Periode de Simulation ',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _periodeDeSimulation = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
        const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Augmentation loyer ',
                      suffixIcon: Icon(Icons.percent_outlined)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _augmentationLoyer = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
         const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Augmentation Taxes ',
                    suffixIcon: Icon(Icons.percent_outlined),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _augmentationTaxes = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
         const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Prochain taux interet ',
                      suffixIcon: Icon(Icons.percent_outlined)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _prochainTauxInterets = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Appreciation annuel ',
                    suffixIcon: Icon(Icons.percent_outlined),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _appreciationAnnuel = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
         const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Taux d\'inflation',
                      suffixIcon: Icon(Icons.percent_outlined)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une valeur';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var _tauxInflation = double.parse(value!);
                  },
                ),
              ),
            ],
          ),
          const Row(),
          const SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              
               Navigator.pop(context);
            },
            child: const Text('Résultat'),
          ),
        ],
      ),
    );
  }
}
