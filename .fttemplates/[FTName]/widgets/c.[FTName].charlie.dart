part of '../_index.dart';

class <FTName | pascalcase>Charlie extends StatelessWidget {
  const <FTName | pascalcase>Charlie({Key? key}) : super(key: key);

  <FTName | pascalcase>Ctrl get ct => Ctrl.<FTName | camelcase>;
  <FTName | pascalcase>Data get dt => Data.<FTName | camelcase>.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rxInt.st}')),
      ],
    );
  }
}
