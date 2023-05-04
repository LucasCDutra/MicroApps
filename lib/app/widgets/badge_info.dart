import 'package:flutter/material.dart';

class BadgeInfo extends StatefulWidget {
  final String title;
  final String description;
  final double width;

  const BadgeInfo({
    Key? key,
    required this.title,
    required this.description,
    required this.width,
  }) : super(key: key);

  @override
  State<BadgeInfo> createState() => _BadgeInfoState();
}

class _BadgeInfoState extends State<BadgeInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, top: 25),
      width: widget.width / 2,
      height: 200,
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF363f93),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(80), topRight: Radius.circular(80)),
          boxShadow: [
            BoxShadow(
                color: const Color(0xff363f93).withOpacity(0.3),
                offset: const Offset(-10, 0),
                blurRadius: 20,
                spreadRadius: 4),
          ],
        ),
        padding: const EdgeInsets.only(
          left: 32,
          top: 40,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              widget.description,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
