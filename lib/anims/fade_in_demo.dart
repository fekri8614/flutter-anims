import 'package:flutter/material.dart';

const owlUrl =
    'https://raw.githubusercontent.com/flutter/website/main/src/assets/images/docs/owl.jpg';

class FadeInDemo extends StatefulWidget {
  const FadeInDemo({super.key});

  @override
  State<FadeInDemo> createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> {
  double opacity = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/owl.jpg'),
        TextButton(
          onPressed: () => setState(() {
            if (opacity == 0) {
              opacity = 1;
            } else {
              opacity = 0;
            }
          }),
          child: const Text(
            'Show Details',
            style: TextStyle(color: Colors.blueAccent),
          ),
        ),
        AnimatedOpacity(
          duration: const Duration(seconds: 2),
          opacity: opacity,
          child:const Column(
            children: [
              Text('Type: Owl'),
              Text('Age: 39'),
              Text('Employment: None'),
            ],
          ),
        ),
      ],
    );
  }
}
