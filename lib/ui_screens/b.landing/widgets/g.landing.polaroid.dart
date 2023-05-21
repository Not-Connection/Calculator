part of '../_index.dart';

class Polaroid extends StatelessWidget {
  final String nama;
  final String npm;
  final EdgeInsetsGeometry? margin;
  final DecorationImage images;
  const Polaroid({
    super.key,
    required this.nama,
    required this.npm,
    this.margin,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(236, 217, 217, 209),
            borderRadius: BorderRadius.all(
              Radius.circular(9),
            ),
          ),
          width: 150,
          height: 210,
          margin: margin,
          child: Column(
            children: [
              Container(
                height: 160,
                width: 130,
                decoration: BoxDecoration(
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
