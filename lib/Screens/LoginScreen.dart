import 'package:flutter/material.dart';
import 'package:marriage_advice_app/Screens/ProfileScreen.dart';

class LoginScreen extends StatelessWidget {
  void navigateToProfile(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfileScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connexion'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Mot de passe',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                navigateToProfile(context); // Appel de la méthode navigateToProfile
              },
              child: Text('Se connecter'),
            ),
          ],
        ),
      ),
    );
  }
}