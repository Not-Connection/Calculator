part of '_index.dart';

class CalculatorData {
  final rxTitle = 'CALCULATOR'.inj();

  final rxInt = 0.inj();

  final isHistory = true.inj();

  final rxSelectedId = Prov.history.st.rxSelectedId;

  final rxValue = Prov.history.st.rxValue;

  final rxValX = Prov.history.st.rxValX;

  final rxValOps = Prov.history.st.rxValOps;

  final rxValY = Prov.history.st.rxValY;

  final rxValScreen = Prov.history.st.rxValScreen;

  final rxValResult = Prov.history.st.rxValResult;

  final rxIsInit = Prov.history.st.rxIsInit;

  final rxHistories = Prov.history.st.rxHistories;

  final textDescript =
      '''     "Sama seperti konsep matematika lainnya, dalam melakukan perhitungan eksponen & logaritma kita membutuhkan waktu dan latihan bahkan ketika kita kurang teliti maka akan timbul kesalahan (human error). Disini kami telah mengembangkan aplikasi kalkulator yang mampu menyelesaikan perhitungan eksponen dan logaritma dengan cepat, tepat dan akurat, serta gratis akses bagi siapapun karena aplikasi ini bisa diakses juga melalui website: ''';

  final textIdentity = '''
Disusun oleh :\n Annisa Putri Wahyuni     	227006042\n Indah Robiatul A 		            227006059\n
PROGRAM STUDI S1 INFORMATIKA\n FAKULTAS TEKNIK\n UNIVERSITAS SILIWANGI\n 2022''';

  final textTitle = '''
KALKULATOR EKSPONEN DAN LOGARITMA BERBASIS WEB DAN APLIKASI MENGGUNAKAN FRAMEWORK FLUTTER\n
Disusun Guna Melengkapi Tugas Mata Kuliah Kalkulus II\n Dosen Pengampu : Euis Nur Fitriani Dewi S.T., M.Kom.\n ''';
}
