import 'package:flutter/material.dart';
import '../../../core/theme/seven_manager_theme.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: SevenManagerTheme.tealBlue,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            height: 80,
            width: 80,
            child: const CircleAvatar(
              child: Icon(
                Icons.person,
                size: 60,
                color: SevenManagerTheme.tealBlue,
              ),
            ),
          ),
          const Text(
            'Departamento',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: SevenManagerTheme.tealBlue,
            ),
          )
        ],
      ),
    );
  }
}
