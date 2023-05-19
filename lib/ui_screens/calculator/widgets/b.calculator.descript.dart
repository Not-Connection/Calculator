part of '../_index.dart';

class CalculatorDescript extends StatelessWidget {
  const CalculatorDescript({super.key});

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.deepOrangeAccent),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      // color: Colors.black,
      child: Column(
        children: [
          SizedBox(
            height: 56,
            width: double.infinity,
            child: sizeWidth < 1000
                ? const Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              'Description',
                              textScaleFactor: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : const Center(
                    child: Text(
                      'Description',
                      textScaleFactor: 1.5,
                    ),
                  ),
          ),
          Expanded(
            child: SizedBox(
              child: ListView(
                children: [
                  Text(
                    dt.textTitle,
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration:
                        const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/logo-unsil.png'))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    dt.textIdentity,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: dt.textDescript,
                          //
                          style: const TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: 'https://kalkulator-uas.web.app"',
                          style: const TextStyle(color: Colors.white),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // html.window.open('https://kalkulator-uas.web.app/', 'new tab');
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
