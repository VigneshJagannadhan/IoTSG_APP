import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({Key? key, required this.text, required this.imageUrl})
      : super(key: key);

  final String text;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      child: Container(
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.w300, color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
            fit: BoxFit.cover,
            alignment: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
