import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: 48,
          ),
        ),
        centerTitle: true,
        title: const Text("Home Page",
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
        ),
        toolbarHeight: 80,
        backgroundColor: const Color.fromRGBO(255, 100, 100, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text("Listagem e Navegação",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Text("Uma aplicação para gerência de estado e navegação com Flutter",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
              ),
            ),
            FilledButton(onPressed: () {
              Navigator.pushNamed(context, "/list");
            },
              style: FilledButton.styleFrom(
                backgroundColor: const Color.fromRGBO(255, 100, 100, 1),
                minimumSize: const Size(360, 72),
                padding: const EdgeInsets.symmetric(horizontal: 16),
              ),
              child: const Text("Ir para List Page",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}