import 'package:flutter/material.dart';
import 'package:flutter_project_gorouter_test/calcul_hypothecaire.dart';
import 'package:flutter_project_gorouter_test/capacite_emprunt.dart';
import 'package:flutter_project_gorouter_test/home.dart';
import 'package:flutter_project_gorouter_test/infos_propriete.dart';
import 'package:flutter_project_gorouter_test/login.dart';
import 'package:flutter_project_gorouter_test/simulation_rentabilite.dart';
import 'package:flutter_project_gorouter_test/taxe_bienvenue.dart';
import 'package:flutter_project_gorouter_test/val_taxe_municipale_scolaire.dart';

class TaxeMuniScolairePage extends StatefulWidget {
  const TaxeMuniScolairePage({super.key, required String name});

  @override
  State<TaxeMuniScolairePage> createState() => _TaxeMuniScolairePageState();
}

class _TaxeMuniScolairePageState extends State<TaxeMuniScolairePage> {
  final _formKey = GlobalKey<FormState>();

  String _adresse = '';

  String _prixVente = '';

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
                    builder: (context) => const CalculHypothecairePage(
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
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Taxes municipale et scolaire'),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Adresse de la propriété',
                    hintText: 'Entrez adresse de la propriété',
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer l\'adresse de la propriété';
                  }
                  return null;
                },
                onSaved: (value) {
                  _adresse = value!;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Prix de vente',
                    hintText: 'Entrez adresse de la propriété',
                    suffixIcon: Icon(Icons.attach_money),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer le prix de vente';
                  }
                  return null;
                },
                onSaved: (value) {
                  _prixVente = value!;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ValidationTaxeMunicipaleScoliare(
                                  adresse: _adresse, prixVente: _prixVente),
                        ),
                      );

                      
                    }
                  },
                  child: const Text('Valider'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/////////////////////////////////////////////////////
