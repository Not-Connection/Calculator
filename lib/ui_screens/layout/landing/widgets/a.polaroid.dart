part of '../_index.dart';

class Polaroid extends StatelessWidget {
  final String nama;
  final String npm;
  final MainAxisAlignment mainaxis;
  final EdgeInsetsGeometry margin;
  final DecorationImage images;
  const Polaroid({
    super.key,
    required this.nama,
    required this.npm,
    required this.mainaxis,
    required this.margin,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainaxis,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(236, 217, 217, 209),
            borderRadius: BorderRadius.all(
              Radius.circular(9),
            ),
          ),
          width: 170,
          height: 250,
          margin: margin,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                  // color: Colors.black,
                  image: images,
                  borderRadius: const BorderRadius.all(
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
