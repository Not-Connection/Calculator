part of '_index.dart';

class TextButtonIcon extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final void Function() onPressed;
  const TextButtonIcon({
    Key? key,
    required this.icon,
    this.color = Colors.deepOrangeAccent,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: OnReactive(
        () => Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}
