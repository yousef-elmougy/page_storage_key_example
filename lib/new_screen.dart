import 'package:flutter/material.dart';
import 'package:page_storage_key/main.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('first Screen'), centerTitle: true),
        body: Center(
          child: Column(
            children: [
            
             
              ElevatedButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const TabPage2()),
                      ),
                      
                  child: const Text('Tab Screen 1')),
                   const SizedBox(
                height: 50,
              ),
                    ElevatedButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const TabPage()),
                      ),
                  child: const Text('Tab Screen 2')),
            ],
          ),
        ),
      );
}
