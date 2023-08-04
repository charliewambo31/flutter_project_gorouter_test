import 'package:flutter/material.dart';
import 'package:flutter_project_gorouter_test/calcul_hypothecaire.dart';
import 'package:flutter_project_gorouter_test/capacite_emprunt.dart';
import 'package:flutter_project_gorouter_test/formulaire_multipage.dart';
import 'package:flutter_project_gorouter_test/home.dart';
import 'package:flutter_project_gorouter_test/infos_propriete.dart';
import 'package:flutter_project_gorouter_test/login.dart';
import 'package:flutter_project_gorouter_test/taxe_bienvenue.dart';
import 'package:flutter_project_gorouter_test/taxe_municipale_scolaire.dart';
//import 'package:go_router/go_router.dart';
//import 'package:flutter_project_gorouter_test/route_name.dart';

class SimulationRentabilitePage extends StatelessWidget {
//final String name;
  //const Login ({super.key, required this.name});
  const SimulationRentabilitePage({super.key, required String name});

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












        appBar: AppBar(
          
          title: const Text('Simulation de la rentabilite'),
        
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Go to Multiformpage'),
            onPressed: () {
            Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                       const MultiformPage(name: 'Formulaire multipage '),
                ),
              );
            },
          ),
        ));
  }
}



