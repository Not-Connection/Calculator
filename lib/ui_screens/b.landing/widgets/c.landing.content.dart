part of '../_index.dart';

class LandingContent extends StatelessWidget {
  const LandingContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Container(
                width: double.infinity,
                height: 400,
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
              const SizedBox(height: 10),
              const LandingSupportedText(),
            ],
          ),
        ),
      ),
    );
  }
}
