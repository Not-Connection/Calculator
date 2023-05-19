part of '_index.dart';

class <FTName | pascalcase>View extends StatelessWidget {
  const <FTName | pascalcase>View({Key? key}) : super(key: key);

  <FTName | pascalcase>Ctrl get ct => Ctrl.<FTName | camelcase>;
  <FTName | pascalcase>Data get dt => Data.<FTName | camelcase>.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: <FTName | pascalcase>Appbar(),
      ),
      floatingActionButton: const <FTName | pascalcase>Fab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            <FTName | pascalcase>Charlie(),
            <FTName | pascalcase>Delta(),
            <FTName | pascalcase>Echo(),
          ],
        ),
      ),
    );
  }
}
