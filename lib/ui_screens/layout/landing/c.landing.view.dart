part of '_index.dart';

class LandingView extends StatelessWidget {
  const LandingView({Key? key}) : super(key: key);

  LandingCtrl get ct => Ctrl.landing;
  LandingData get dt => Data.landing.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:

          // MediaQuery.of(context).size.width > 1000
          //     ? InkWell(
          //         onTap: () => nav.to(Routes.calculator),
          //         child: Center(
          //           child: Container(
          //             padding: const EdgeInsets.all(10),
          //             decoration: const BoxDecoration(
          //               color: Colors.black,
          //             ),
          //             // constraints: const BoxConstraints(maxWidth: 1000),
          //             child: Center(
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   const Polaroid2(
          //                     margin: EdgeInsets.only(right: 50),
          //                     mainaxis: MainAxisAlignment.end,
          //                     nama: 'Annisa Putri Wahyuni',
          //                     npm: '227006042',
          //                   ),
          //                   const Polaroid2(
          //                     margin: EdgeInsets.only(left: 50),
          //                     mainaxis: MainAxisAlignment.start,
          //                     nama: 'Indah Robiatul Adawiyah',
          //                     npm: '227006059',
          //                   ),
          //                   const SizedBox(
          //                     height: 40,
          //                   ),
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.center,
          //                     children: [
          //                       SizedBox(
          //                         height: 50,
          //                         width: 50,
          //                         child: Image.asset(
          //                           'assets/images/flutter-logo.webp',
          //                         ),
          //                       ),
          //                       const Text('Powered by flutter'),
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //       )
          //     :

          InkWell(
        onTap: () => nav.to(Routes.calculator),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                // color: Colors.black,
                // color: Colors.amber,
                ),
            constraints: const BoxConstraints(maxWidth: 600),
            // constraints: const BoxConstraints(maxWidth: 1000),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Polaroid(
                  images: DecorationImage(image: AssetImage('assets/images/annisa_out.jpg')),
                  margin: EdgeInsets.only(right: 50),
                  mainaxis: MainAxisAlignment.end,
                  nama: 'Annisa Putri Wahyuni',
                  npm: '227006042',
                ),
                const Polaroid(
                  images: DecorationImage(image: AssetImage('assets/images/indah_out.jpg')),
                  margin: EdgeInsets.only(left: 50),
                  mainaxis: MainAxisAlignment.start,
                  nama: 'Indah Robiatul Adawiyah',
                  npm: '227006059',
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        'assets/images/flutter-logo.webp',
                      ),
                    ),
                    const Text('Powered by flutter'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
