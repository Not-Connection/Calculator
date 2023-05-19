part of '../_index.dart';

class Polaroid2 extends StatelessWidget {
  final String nama;
  final String npm;
  final MainAxisAlignment mainaxis;
  final EdgeInsetsGeometry margin;
  const Polaroid2({super.key, required this.nama, required this.npm, required this.mainaxis, required this.margin});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainaxis,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(9),
            ),
          ),
          width: 340,
          height: 500,
          margin: margin,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                height: 360,
                width: 300,
                decoration: const BoxDecoration(
                  // color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage('assets/images/flutter-logo.webp'),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(9),
                  ),
                ),
              ),
              Text(
                nama,
                style: const TextStyle(color: Colors.black),
              ),
              Text(
                npm,
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
