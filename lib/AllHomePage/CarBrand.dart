import 'package:flutter/material.dart';

class HondaLogo extends StatelessWidget {
  const HondaLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 90,
        width: 90,
        foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(
                'assets/carLOGO/hondaLogo.png',
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}

class ToyotaLogo extends StatelessWidget {
  const ToyotaLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 90,
        width: 90,
        foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(
                'assets/toyotalogo.png',
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}

class BmLogo extends StatelessWidget {
  const BmLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 90,
        width: 90,
        foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(
                'assets/carLOGO/bmwLogo.png',
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}

class BenzLogo extends StatelessWidget {
  const BenzLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 90,
        width: 90,
        foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(
                'assets/carLOGO/mercedes-benz-logo.jpg',
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}

class NissanLogo extends StatelessWidget {
  const NissanLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 90,
        width: 90,
        foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(
                'assets/nissanLogo.png',
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
