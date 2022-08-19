import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Salvar'),
    );
  }
}