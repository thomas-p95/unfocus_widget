import 'package:flutter/material.dart';
import 'package:unfocus_widget/unfocus_widget.dart';

void main() {
  runApp(const MyApp());
}

///@template my_app
///
/// MyApp is the main entry point for the application.
///
/// @endtemplate
class MyApp extends StatelessWidget {
  ///@macro my_app
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unfocus widget example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const UnfocusExample(),
    );
  }
}

///@template unfocus_example
///
/// Example of using UnfocusWidget to unfocus the keyboard when touching
/// outside the fields.
///
/// @endtemplate
class UnfocusExample extends StatelessWidget {
  ///@macro unfocus_example
  const UnfocusExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('UnfocusWidget demo'),
      ),
      body: UnFocusWidget(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Tap outside the fields to dismiss the keyboard.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'First name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Last name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Notes',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 24),
              Text(
                'Extra space so you can scroll and tap empty areas below.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 400),
            ],
          ),
        ),
      ),
    );
  }
}
