import 'package:flutter/material.dart';

class CardMicroAppInfo extends StatefulWidget {
  final double width;
  final double height;
  final String title;
  final String commandCreate;
  final String description;
  final String image;

  const CardMicroAppInfo(
      {Key? key,
      required this.width,
      required this.height,
      required this.title,
      required this.commandCreate,
      required this.description,
      required this.image})
      : super(key: key);

  @override
  State<CardMicroAppInfo> createState() => _CardMicroAppInfoState();
}

class _CardMicroAppInfoState extends State<CardMicroAppInfo> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: 450,
      child: Stack(
        children: [
          Positioned(
            top: 35,
            left: 30,
            child: Material(
              child: Container(
                height: 200.0,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        offset: const Offset(-10, 10),
                        blurRadius: 20,
                        spreadRadius: 4)
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 17,
            left: 5,
            child: Card(
              elevation: 10,
              shadowColor: Colors.grey.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                    color: const Color(0xff363f93),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(widget.image), fit: BoxFit.fill)),
              ),
            ),
          ),
          Positioned(
              top: 60,
              left: 200,
              child: SizedBox(
                height: 200,
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF363F93),
                      ),
                    ),
                    Text(
                      widget.commandCreate,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Text(
                      widget.description,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
