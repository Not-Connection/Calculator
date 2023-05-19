part of '../_index.dart';

class CalculatorDescript extends StatelessWidget {
  const CalculatorDescript({super.key});

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
                      // SizedBox(
                      //   width: 50,
                      //   height: 50,
                      //   child: IconButton(
                      //     onPressed: () {
                      //       Scaffold.of(context).closeEndDrawer();
                      //     },
                      //     icon: const Icon(Icons.arrow_back_ios),
                      //   ),
                      // ),
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
                  const Text(
                    '''
KALKULATOR EKSPONEN DAN LOGARITMA BERBASIS WEB DAN APLIKASI MENGGUNAKAN FRAMEWORK FLUTTER\n
Disusun Guna Melengkapi Tugas Mata Kuliah Kalkulus II\n Dosen Pengampu : Euis Nur Fitriani Dewi S.T., M.Kom.\n ''',
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
                  const Text(
                    '''
Disusun oleh :\n Annisa Putri Wahyuni     	227006042\n Indah Robiatul A 		            227006059\n
PROGRAM STUDI S1 INFORMATIKA\n FAKULTAS TEKNIK\n UNIVERSITAS SILIWANGI\n 2022''',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text:
                              '''     "Sama seperti konsep matematika lainnya, dalam melakukan perhitungan eksponen & logaritma kita membutuhkan waktu dan latihan bahkan ketika kita kurang teliti maka akan timbul kesalahan (human error). Disini kami telah mengembangkan aplikasi kalkulator yang mampu menyelesaikan perhitungan eksponen dan logaritma dengan cepat, tepat dan akurat, serta gratis akses bagi siapapun karena aplikasi ini bisa diakses juga melalui website: ''',
                          //
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: 'https://kalkulator-uas.web.app"',
                          // style: const TextStyle(color: Colors.deepOrangeAccent),
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
              // child: ListView(
              //   children: const [

              //     Text(
              //       '''     "Sama seperti konsep matematika lainnya, dalam melakukan perhitungan eksponen & logaritma kita membutuhkan waktu dan latihan bahkan ketika kita kurang teliti maka akan timbul kesalahan. Disini kami telah mengembangkan kalkulator yang mampu menyelesaikan perhitungan eksponen dan logaritma dengan cepat, tepat dan akurat, serta gratis untuk digunakan siapa saja karena untuk mengaksesnya cukup mengakses . Kalkulator logaritma natural membantu Anda menemukan log dari angka yang berbeda." ''',
              //       textAlign: TextAlign.justify,
              //     ),
              //   ],
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
