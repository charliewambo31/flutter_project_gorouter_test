import 'package:flutter/material.dart';
import 'package:flutter_project_gorouter_test/aboutus.dart';
import 'package:flutter_project_gorouter_test/classes/language.dart';
import 'package:flutter_project_gorouter_test/classes/language_constants.dart';
// ignore: unused_import
import 'package:go_router/go_router.dart';

import 'package:flutter_project_gorouter_test/home.dart';
import 'package:flutter_project_gorouter_test/main.dart';
import 'package:flutter_project_gorouter_test/settings.dart';



class Login extends StatefulWidget {
  final String name;
  const Login({Key? key, required this.name}) : super(key: key);

  @override

  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login to calculatrice immobiliere'),
          //title: Text(translation(context).login),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<Language>(
                underline: const SizedBox(),
                icon: const Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                onChanged: (Language? language) async {
                  if (language != null) {
                    Locale locale = await setLocale(language.languageCode);
    
                    // ignore: use_build_context_synchronously
                    MyApp.setLocale(context, locale);
                  }
                },
                items: Language.languageList()
                    .map<DropdownMenuItem<Language>>(
                      (e) => DropdownMenuItem<Language>(
                        value: e,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              e.flag,
                              style: const TextStyle(fontSize: 30),
                            ),
                            Text(e.name)
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: _drawerList(),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: _isLoading ? _loadingIndicator() : _mainForm(context),
        ),
      ),
    );
  }

  Form _mainForm(BuildContext context) {
    return Form(
      
      key: _key,
      child: Column(
        children: <Widget>[
          
          SizedBox(
            height: 100,
            child: CircleAvatar(
              radius: 65,
              child: ClipOval(
                child: Image.asset('assets/house.png',width:130,height:130, fit: BoxFit.cover),
                //Image.asset('images/user.jpg', fit: BoxFit.cover),
                
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: const Center(
              child: Text(
                'Login',
                //translation(context).personalInformation,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            autofillHints: const[AutofillHints.email], 
            validator: (val) {
              if (val != null && val.isEmpty) {
                //return translation(context).requiredField;
                return 'requiredField';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
       
              label: Text('Email'),
              //labelText: translation(context).name,
              //hintText: translation(context).nameHint,
            ),
          ),






          const SizedBox(
            height: 10,
          ),



          TextFormField(
             keyboardType: TextInputType.visiblePassword,
              autofillHints: const[AutofillHints.password], 
            validator: (val) {
              if (val != null && val.isEmpty) {
                return 'requiredField';
                //return translation(context).requiredField;
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Password'),
              //labelText: translation(context).email,
              //hintText: translation(context).emailHint,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              if (_key.currentState != null && _key.currentState!.validate()) {
                setState(() {
                  _isLoading = true;
                });
                // Simulate an asynchronous operation
                Future.delayed(const Duration(seconds: 2), () {
                  setState(() {
                    _isLoading = false;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                 
                      builder: (context) => const Home(name: 'Page d\'accueil',),
                    ),
                  );
                });
              }
            },
            height: 50,
            shape: const StadiumBorder(),
            color: Colors.grey,
           // color: Theme.of(context).primaryColor,
            child: const Center(
              child: Text(
                'Login',
                //translation(context).submitInfo,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _drawerList() {
    TextStyle textStyle = const TextStyle(
      //color: Colors.blueGrey,
      color: Colors.black87,
      fontSize: 24,
    );
    return Container(
     // color: Theme.of(context).primaryColor,
      color: Colors.grey,

      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: SizedBox(
              height: 100,
              ///
            child: CircleAvatar(
            radius: 65,
            child: ClipOval(
              child: Image.asset(
                "assets/house.png",
                width:130,
                height:130, 
                fit: BoxFit.cover),
        
              
            ),
          ),
              ///
              
            ),
           
          ),
          ListTile(
            leading: const Icon(
              Icons.info,
              color: Colors.black87,
              size: 30,
            ),
            title: Text(
              'aboutUs',
              //translation(context).aboutUs,
              style: textStyle,
            ),
            onTap: () {
              ///
              //Navigator.pop(context);
              //Navigator.pushNamed(context, aboutRoute);
              ////
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutUsPage(name: 'About Us'),
                ),
              );
              ////
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.black87,
              size: 30,
            ),
            title: Text(
              'settings',
              //translation(context).settings,
              style: textStyle,
            ),
            onTap: () {
              ////

              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(name: 'Settings'),
                ),
              );
              /////
              //Navigator.pop(context);
              //Navigator.pushNamed(context, settingsRoute);
              ///
            },
          ),
        ],
      ),
    );
  }

  Widget _loadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
