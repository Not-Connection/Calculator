part of '_index.dart';

class SizedBoxW extends StatelessWidget {
  final double width;
  const SizedBoxW(
    this.width, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
