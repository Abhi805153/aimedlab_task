import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Aimed lab',
    home: AimedLab(),
    debugShowCheckedModeBanner: false,
  ));
}

class AimedLab extends StatelessWidget {
  const AimedLab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Boad'),
          backgroundColor: Colors.black12,
        ),
        body: const Center(
          child: ResponsiveCard(),
        ),
      ),
    );
  }
}







class ResponsiveCard extends StatelessWidget {
  const ResponsiveCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth * 0.3,
      // width: cardWidth,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Responsive Boad',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 20),
          Text(
            'This boad can  adapts its size based on the screen width.',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
