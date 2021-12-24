import 'package:flutter/material.dart';

class Watches {
  final String? image, price, title;
  final int? id;
  final Color? color;

  Watches({this.color, this.price, this.title, this.id, this.image});
}

List watchesList = [
  Watches(
    id: 01,
    title: "Classic Mawes",
    image: "assets/1.png",
    price: "\$ 199.00",
    color: const Color(0xFF8B2C3F).withOpacity(0.2),
  ),
  Watches(
    id: 02,
    title: "Classic Mawes",
    image: "assets/2.png",
    price: "\$ 199.00",
    color: const Color(0xFF5B2922).withOpacity(0.2),
  ),
  Watches(
    id: 03,
    title: "Classic Mawes",
    image: "assets/3.png",
    price: "\$ 199.00",
    color: const Color(0xFF343F5B).withOpacity(0.2),
  ),
  Watches(
    id: 04,
    title: "Classic Mawes",
    image: "assets/4.png",
    price: "\$ 199.00",
    color: const Color(0xFF353535).withOpacity(0.2),
  ),
  Watches(
    id: 05,
    title: "Classic Mawes",
    image: "assets/5.png",
    price: "\$ 199.00",
    color: const Color(0xFFB54F4F).withOpacity(0.2),
  ),
  Watches(
    id: 06,
    title: "Classic Mawes",
    image: "assets/6.png",
    price: "\$ 199.00",
    color: const Color(0xFFDFA2C5).withOpacity(0.2),
  ),
  Watches(
    id: 07,
    title: "Classic Mawes",
    image: "assets/7.png",
    price: "\$ 199.00",
    color: const Color(0xFF1D1B2B).withOpacity(0.2),
  ),
  Watches(
    id: 08,
    title: "Classic Mawes",
    image: "assets/8.png",
    price: "\$ 199.00",
    color: const Color(0xFFFF98BA).withOpacity(0.2),
  ),
];
