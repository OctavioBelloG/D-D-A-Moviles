import 'package:flutter/material.dart';

class RowiconsWidget extends StatelessWidget {
  const RowiconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.umbrella_sharp, color: Colors.green, size: 60),
          Icon(Icons.phone_android, color: const Color.fromARGB(255, 36, 0, 243), size: 60),
          Icon(Icons.grade_outlined, color: Colors.orange, size: 60),
          Icon(Icons.vpn_key, color: Colors.black, size: 60),
          Icon(Icons.add_chart, color: Colors.blue, size: 60),
        ],
      ),
    );
  }
}
