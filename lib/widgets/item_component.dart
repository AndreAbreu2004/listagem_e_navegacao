import 'package:flutter/material.dart';

class ItemComponent extends StatefulWidget {
  final int contador;
  const ItemComponent({super.key, required this.contador});

  @override
  State<ItemComponent> createState() => _ItemComponentState();
}

class _ItemComponentState extends State<ItemComponent> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          border: Border.all(
            color: const Color.fromRGBO(255, 100, 100, 1),
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        height: 72,
        width: 360,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Item ${widget.contador.toString()}",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onEnter: (event) {
                  setState(() {
                    isHovering = true;
                  });
                },
                onExit: (event) {
                  setState(() {
                    isHovering = false;
                  });
                },
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.delete,
                    color: isHovering ? Colors.black: const Color.fromRGBO(255, 100, 100, 1),
                    size: 48,
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}