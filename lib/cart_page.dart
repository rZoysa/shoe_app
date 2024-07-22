import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(1.5, 0.0),
            end: Alignment(-3.0, 0.0),
            colors: [
              Color(0xFF26292D),
              Color(0xFF575A61),
            ],
            stops: [0.3692, 0.9613],
            transform:
                GradientRotation(64 * 3.1415927 / 90), // 14 degrees in radians
          ),
        ),
        child: const Center(
          child: Text('Cart Page'),
        ),
      ),
    );
  }
}
