part of '_index.dart';

class TextBoxFlexible extends StatelessWidget {
  final double? textScaleFactor;
  final TextStyle? style;
  final String text;
  const TextBoxFlexible({
    super.key,
    required this.text,
    this.textScaleFactor,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Align(
        alignment: Alignment.center,
        child: Text(text, textScaleFactor: textScaleFactor, style: style),
      ),
    );
  }
}
