part of '../_index.dart';

class LandingSupportedText extends StatelessWidget {
  const LandingSupportedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return Visibility(
      visible: sizeWidth <= 1000,
      child: Center(
        child: Container(
          color: Colors.black,
          child: const Column(
            children: [
              Text('Powered by :'),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(),
                  Text('Flutter'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
