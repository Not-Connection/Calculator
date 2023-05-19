part of '../_index.dart';

class <FTName | pascalcase>Appbar extends StatelessWidget {
  const <FTName | pascalcase>Appbar({Key? key}) : super(key: key);

  <FTName | pascalcase>Ctrl get ct => Ctrl.<FTName | camelcase>;
  <FTName | pascalcase>Data get dt => Data.<FTName | camelcase>.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
