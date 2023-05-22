part of '../_index.dart';

class LandingContent extends StatelessWidget {
  const LandingContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return Flexible(
      child: SizedBox(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: sizeWidth <= 1000 ? 450 : 400,
                color: Colors.black,
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 500),
                    child: const SingleChildScrollView(
                      child: LandingLabel(),
                    ),
                  ),
                ),
              ),
              // const SizedBox(height: 10),
              // const LandingSupportedText(),
            ],
          ),
        ),
      ),
    );
  }
}
