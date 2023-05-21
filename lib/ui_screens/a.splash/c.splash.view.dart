part of '_index.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  SplashCtrl get ct => Ctrl.splash;
  SplashData get dt => Data.splash.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: Image.asset(dt.calculatorLogo),
            ),
            Text(
              dt.rxTitle.st,
              style: const TextStyle(
                color: Color.fromARGB(255, 244, 238, 238),
                letterSpacing: 4,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
