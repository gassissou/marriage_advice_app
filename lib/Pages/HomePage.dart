import 'package:flutter/material.dart';
import 'package:marriage_advice_app/Screens/RegistrationScreen.dart';

class HomePage extends StatelessWidget {
  void navigateToRegistration(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegistrationScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marriage Advice Application'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pinkAccent.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "logo.jpg",
                      width: 400,
                      height: 350,
                    ),
                    SizedBox(height: 10), // Ajoute un espacement entre l'image et le titre
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Bienvenue dans notre application de conseils matrimoniaux',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                navigateToRegistration(context); // Appel de la méthode navigateToRegistration
              },
              child: Text('Commencer',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}