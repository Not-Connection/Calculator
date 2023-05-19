part of '_index.dart';

class TextButtonChar extends StatelessWidget {
  final String char;
  final Color? color;
  final void Function() onPressed;
  const TextButtonChar({
    Key? key,
    required this.char,
    this.color = Colors.white,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: OnReactive(
        () => Text(
          char,
          style: TextStyle(
            color: color,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
