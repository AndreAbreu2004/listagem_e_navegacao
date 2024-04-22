import 'package:flutter/material.dart';
import 'package:listagem_e_navegacao/widgets/item_component.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<ItemComponent> items = [const ItemComponent(contador: 1)];
  int counter = 1;

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
        title: const Text("List Page",
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
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: items,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  FilledButton(onPressed: () {
                    setState(() {
                      counter++;
                      items.add(ItemComponent(contador: counter));
                    });
                  },
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(255, 100, 100, 1),
                      minimumSize: const Size(360, 72),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    child: const Text("Adicionar Item",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: FilledButton(onPressed: () {
                      Navigator.pushNamed(context, "/home");
                    },
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(255, 100, 100, 1),
                        minimumSize: const Size(360, 72),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                      ),
                      child: const Text("Voltar para Home",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



