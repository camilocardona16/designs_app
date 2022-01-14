// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Image(image: AssetImage('assets/paisaje.jpg')),
        const _Titulo(),
        const _BottomSection(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: const Text(
              'Nisi ipsum aute ex exercitation excepteur. Non elit eu non in consectetur qui commodo eu tempor. Nostrud pariatur voluptate ea velit cupidatat labore. Consectetur labore ad ipsum dolore qui exercitation elit pariatur nulla mollit minim in. Aute dolor sint ex proident sint velit in do non est non labore occaecat quis. Lorem exercitation sunt nisi sit veniam ad cupidatat.'),
        )
      ]),
    );
  }
}

class _Titulo extends StatelessWidget {
  const _Titulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Titulo de la imagen',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Descripcion de la imagen',
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }
}

class _BottomSection extends StatelessWidget {
  const _BottomSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _CustomBottom(icon: Icons.call, text: 'CALL'),
          _CustomBottom(icon: Icons.navigation, text: 'ROUTE'),
          _CustomBottom(icon: Icons.share_rounded, text: 'SHARED'),
        ],
      ),
    );
  }
}

class _CustomBottom extends StatelessWidget {
  final IconData icon;
  final String text;
  const _CustomBottom({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue),
        Text(text, style: const TextStyle(color: Colors.blue, fontSize: 10)),
      ],
    );
  }
}
