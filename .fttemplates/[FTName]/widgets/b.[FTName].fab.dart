part of '../_index.dart';

class <FTName | pascalcase>Fab extends StatelessWidget {
  const <FTName | pascalcase>Fab({Key? key}) : super(key: key);

  <FTName | pascalcase>Ctrl get ct => Ctrl.<FTName | camelcase>;
  <FTName | pascalcase>Data get dt => Data.<FTName | camelcase>.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
