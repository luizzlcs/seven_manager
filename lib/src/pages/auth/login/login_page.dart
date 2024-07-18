import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                
                onPressed: () {},
                child: const Text('Botão'),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Bola'),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                'Rodrigo Saymon',
                style: TextStyle(fontSize: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
