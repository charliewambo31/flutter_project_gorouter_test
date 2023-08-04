import 'package:flutter/material.dart';
import 'package:flutter_project_gorouter_test/aboutus.dart';
import 'package:flutter_project_gorouter_test/calcul_hypothecaire.dart';
import 'package:flutter_project_gorouter_test/capacite_emprunt.dart';
import 'package:flutter_project_gorouter_test/formulaire_multipage.dart';
import 'package:flutter_project_gorouter_test/infos_propriete.dart';
import 'package:flutter_project_gorouter_test/login.dart';


import 'package:flutter_project_gorouter_test/simulation_rentabilite.dart';
import 'package:flutter_project_gorouter_test/home.dart';
import 'package:flutter_project_gorouter_test/settings.dart';
import 'package:flutter_project_gorouter_test/taxe_bienvenue.dart';
import 'package:flutter_project_gorouter_test/taxe_municipale_scolaire.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_project_gorouter_test/route_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static void setLocale(BuildContext context, Locale locale) {}
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
       debugShowCheckedModeBanner: false,
      
      title: 'Go router ',
      routerConfig: _router,
      
    );
  }

  final GoRouter _router = GoRouter(
    routes: [
    GoRoute(
        name: RouteNames.login,
        path: '/',
        builder: (context, state) => const Login(name: 'loginPage'),

        routes: [
          GoRoute(
             
               path: RouteNames.about,
               builder: (context, state) =>  const AboutUsPage(name: 'About us')),

          GoRoute(
            
               path: RouteNames.settings,
               builder: (context, state) =>  const SettingsPage(name: 'hello settings',)),
          GoRoute(
             
              path: RouteNames.home,
              builder: (context, state) =>  const Home(name: 'HomePage')),


          GoRoute(
            
              path: RouteNames.simulationrentabilite,
              builder: (context, state) =>  const SimulationRentabilitePage(name: 'Simulation de la rentabilite',)),

          GoRoute(
             
                path: RouteNames.taxebienvenue,
                builder: (context, state) => TaxeBienvenuePage(name: 'Taxe de bienvenue ')),


          GoRoute(
            
               path: RouteNames.calculhypothecaire,
                builder: (context, state) =>  const CalculHypothecairePage(name: 'Calcul Hypothecaire',)),
          GoRoute(
             
               path: RouteNames.capaciteemprunt,
               builder: (context, state) => const CapaciteEmpruntPage(name: 'Calcul de la capacite d\'emprunt')),

          GoRoute(
            
               path: RouteNames.taxemuniscolaire,
               builder: (context, state) =>  const TaxeMuniScolairePage(name: 'taxe municipale et scolaire',)),
        GoRoute(
            
               path: RouteNames.infospropriete,
               builder: (context, state) =>  const InfosProprietePage(name: 'Informations sur une propriete',)),
          
        GoRoute(
            
               path: RouteNames.formulairemultipage,
               builder: (context, state) =>  const MultiformPage(name: 'Formulaire Multipage',)),
        
        


        ]),
    
          
        
  ]);
}



