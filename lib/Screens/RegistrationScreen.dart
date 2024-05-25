import 'package:flutter/material.dart';
import 'package:marriage_advice_app/Screens/LoginScreen.dart';

class RegistrationScreen extends StatelessWidget {
  void navigateToLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Nom',
              ),
            ),
            SizedBox(height: 10),
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
            TextField(
              decoration: InputDecoration(
                hintText: 'Age',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                navigateToLogin(context); // Appel de la méthode navigateToLogin
              },
              child: Text('S\'inscrire'),
            ),
          ],
        ),
      ),
    );
  }
}