import 'package:flutter/material.dart';

class CoffeTypeSelector extends StatelessWidget {
  final String type;
  final bool isSelected;
  const CoffeTypeSelector({super.key, required this.type, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          type,
          style: TextStyle(color: isSelected ? Colors.orange:Colors.white, fontSize: 20),
        ),
        const SizedBox(width: 20.0,),
      ],
    );
    
  }
}
