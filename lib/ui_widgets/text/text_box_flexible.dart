part of '_index.dart';

class TextBoxFlexible extends StatelessWidget {
  final double? textScaleFactor;
  final String text;
  const TextBoxFlexible({
    super.key,
    required this.text,
    this.textScaleFactor = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          textScaleFactor: textScaleFactor,
        ),
      ),
    );
  }
}
