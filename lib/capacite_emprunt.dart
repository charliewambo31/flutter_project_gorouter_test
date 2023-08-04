import 'package:flutter/material.dart';
import 'package:flutter_project_gorouter_test/calcul_hypothecaire.dart';
import 'package:flutter_project_gorouter_test/home.dart';
import 'package:flutter_project_gorouter_test/infos_propriete.dart';
import 'package:flutter_project_gorouter_test/login.dart';
import 'package:flutter_project_gorouter_test/simulation_rentabilite.dart';
import 'package:flutter_project_gorouter_test/taxe_bienvenue.dart';
import 'package:flutter_project_gorouter_test/taxe_municipale_scolaire.dart';
import 'package:flutter_project_gorouter_test/val_capacite_emprunt.dart';

class CapaciteEmpruntPage extends StatefulWidget {
  //const CapaciteEmpruntPage({super.key, required String name});
  const CapaciteEmpruntPage({Key? key, required String name}) : super(key: key);

//CapaciteEmprunt({super.key, required String name});

  @override
  // ignore: library_private_types_in_public_api
  _CapaciteEmpruntPageState createState() => _CapaciteEmpruntPageState();
}

class _CapaciteEmpruntPageState extends State<CapaciteEmpruntPage> {
  final _formKey = GlobalKey<FormState>();
  //final _formKey = GlobalKey<FormState>();
  double? annualIncome;
  double? existingLoans;
  double? loanCapacity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: _scaffoldKey,
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
                    builder: (context) => const Home(name: 'page d\'accueil'),
                  ),
                );
              },
            ),

            const SizedBox(
              height: 8.0,
              width: double.infinity,
            ),
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
                    builder: (context) => const SimulationRentabilitePage(
                        name: 'Simulation de la rentabilite'),
                  ),
                );
              },
            ),

            const SizedBox(
              height: 8.0,
              width: double.infinity,
            ),
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
                    builder: (context) =>
                        TaxeBienvenuePage(name: 'Taxe de bienvenue'),
                  ),
                );
              },
            ),

            const SizedBox(
              height: 8.0,
              width: double.infinity,
            ),
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
                    builder: (context) => const CalculHypothecairePage(
                        name: 'Calcul hypothecaire'),
                  ),
                );
              },
            ),

            const SizedBox(
              height: 8.0,
              width: double.infinity,
            ),
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
                    builder: (context) => const TaxeMuniScolairePage(
                        name: 'Taxes municipale et scolaire'),
                  ),
                );
              },
            ),

            const SizedBox(
              height: 8.0,
              width: double.infinity,
            ),
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
                    builder: (context) => const CapaciteEmpruntPage(
                        name: 'Calcul capacite emprunt'),
                  ),
                );
              },
            ),

            const SizedBox(
              height: 8.0,
              width: double.infinity,
            ),
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
                    builder: (context) => const InfosProprietePage(
                        name: 'Informations sur une proprieté'),
                  ),
                );
              },
            ),
            //////////////////////////////////////////////////////

            const SizedBox(
              height: 24.0,
              width: double.infinity,
            ),
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

            ///////////////////
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Calcul capacite emprunt'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Revenu annuel',
                hintText: 'Entrez revenu annuel',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Veuillez saisir un revenu annuel.';
                }
                if (double.tryParse(value) == null) {
                  return 'Veuillez saisir un nombre valide.';
                }
                return null;
              },
              onSaved: (value) {
                annualIncome = double.parse(value!);
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Prêts existants',
                hintText: 'Entrez prêts existants',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Veuillez saisir la somme des prêts existants.';
                }
                if (double.tryParse(value) == null) {
                  return 'Veuillez saisir un nombre valide.';
                }
                return null;
              },
              onSaved: (value) {
                existingLoans = double.parse(value!);
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState?.save();
                  calculateCapacity();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ValidationCapaciteEmprunt(
                          capacity: loanCapacity!,
                          annualIncome: annualIncome!,
                          existingLoans:existingLoans!),
                    ),
                 


                  );
              
                }
              },
              child: const Text('Calculer'),
            ),
            // Text(
            //   'Capacité d\'emprunt : ${loanCapacity ?? 0}',
            //   style: const TextStyle(
            //     fontSize: 18.0,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  

  void calculateCapacity() {
    loanCapacity = (annualIncome! * 0.35) - (existingLoans ?? 0);
  }
}
