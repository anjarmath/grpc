import 'package:rcgp_checker/view/controller/clinics.dart';

class ClinicController {
  String? evaluateNo1(List<int?> answer) {
    if (answer.length != clinics[0].edges.length) {
      return "Range Error";
    }

    if (answer.contains(null)) {
      return "Lengkapi jawaban terlebih dahulu!";
    }

    bool a1 = answer[0] == 1;
    bool a2 = answer[3] == 0;

    if (!a1 || !a2) {
      return "Teorema yang dipakai sebagai alasan salah";
    }

    bool c1t1 = answer[4] == 0 && answer[5] == 0;
    bool c1t2 = answer[4] == 1 && answer[5] == 1;
    bool c1t3 = answer[4] == 2 && answer[5] == 2;
    bool c1t4 = answer[4] == 3 && answer[5] == 3;
    bool c1t5 = answer[4] == 4 && answer[5] == 4;
    bool c1t6 = answer[4] == 5 && answer[5] == 5;

    if (!(c1t1 || c1t2 || c1t3 || c1t5 || c1t5 || c1t6)) {
      return "Kesimpulan tidak valid";
    }

    if (c1t3 || c1t4 || c1t6) {
      return "Anda tidak bisa menggunakan premis sebagai kesimpulan yang akan dibuktikan";
    }

    return null;
  }

  String? evaluateNo2(List<int?> answer) {
    if (answer.length != clinics[1].edges.length) {
      return "Range Error";
    }

    if (answer.contains(null)) {
      return "Lengkapi jawaban terlebih dahulu!";
    }

    bool c1t1 = answer[0] == 0 && answer[1] == 0;
    bool c1t2 = answer[0] == 1 && answer[1] == 1;
    if (!(c1t1 || c1t2)) {
      return "1 dan 2 tidak valid!";
    }

    bool c2t1 = answer[2] == 0 && answer[3] == 0;
    bool c2t2 = answer[2] == 1 && answer[3] == 1;
    bool c2t3 = answer[2] == 2 && answer[3] == 2;
    if (!(c2t1 || c2t2 || c2t3)) {
      return "3 dan 4 tidak valid!";
    }
    if (c2t2) {
      return "Anda tidak bisa menggunakan kesimpulan untuk membuktikan kesimpulan Anda";
    }

    if ((c2t1 && answer[4] != 1) || (c2t3 && answer[4] != 2)) {
      return "Teorema yang dipakai sebagai alasan salah";
    }

    if (answer[7] != 0) {
      return "Teorema yang dipakai sebagai alasan salah";
    }

    return null;
  }

  String? evaluateNo3(List<int?> answer) {
    if (answer.length != clinics[2].edges.length) {
      return "Range Error";
    }

    if (answer.contains(null)) {
      return "Lengkapi jawaban terlebih dahulu!";
    }

    bool c1t1 = answer[0] == 0 && answer[1] == 0;
    bool c1t2 = answer[0] == 1 && answer[1] == 1;
    bool c1t3 = answer[0] == 2 && answer[1] == 2;
    bool c1t4 = answer[0] == 3 && answer[1] == 3;
    if (!(c1t1 || c1t2 || c1t3 || c1t4)) {
      return "1 dan 2 tidak valid!";
    }

    bool c2t1 = answer[2] == 0 && answer[3] == 0;
    bool c2t2 = answer[2] == 1 && answer[3] == 1;
    bool c2t3 = answer[2] == 2 && answer[3] == 2;
    bool c2t4 = answer[2] == 3 && answer[3] == 3;
    bool c2t5 = answer[2] == 4 && answer[3] == 4;
    bool c2t6 = answer[2] == 5 && answer[3] == 5;
    if (!(c2t1 || c2t2 || c2t3 || c2t4 || c2t5 || c2t6)) {
      return "3 dan 4 tidak valid";
    }

    bool c3t1 = answer[4] == 0 && answer[5] == 0;
    bool c3t2 = answer[4] == 1 && answer[5] == 1;
    bool c3t3 = answer[4] == 2 && answer[5] == 2;
    bool c3t4 = answer[4] == 3 && answer[5] == 3;
    bool c3t5 = answer[4] == 4 && answer[5] == 4;
    if (!(c3t1 || c3t2 || c3t3 || c3t4 || c3t5)) {
      return "5 dan 6 tidak valid";
    }

    if (c1t2 || c2t5 || c3t4) {
      return "Anda tidak bisa menggunakan kesimpulan untuk membuktikan kesimpulan Anda";
    }

    bool d1 = c1t1 && c2t3;
    bool d2 = c1t2 && c2t4;
    bool d3 = (c1t4 && c2t2) || (c1t4 && c3t1) || (c2t2 && c3t1);
    bool d4 = c2t1 && c3t5;
    bool d5 = c2t6 && (c3t3 || c3t2);
    if (d1 || d2 || d3 || d4 || d5) {
      return "Terdapat pernyataan awal yang duplikat!";
    }

    bool sss = (c1t1 || c1t4) && (c1t1 || c2t2 || c2t3) && (c3t1 || c3t5);
    bool ssds = (c1t1 || c1t4) && (c2t4 || c2t5 || c2t6) && (c3t1 || c3t5);
    bool sdssd =
        (c1t2 || c1t3) && (c1t1 || c2t2 || c2t3) && (c3t2 || c3t3 || c3t4);

    if ((sss && answer[6] != 0) ||
        (ssds && answer[6] != 1) ||
        (sdssd && answer[6] != 2)) {
      return "Teorema yang dipakai sebagai alasan salah";
    }

    if (answer[9] != 0) {
      return "Teorema yang dipakai sebagai alasan salah";
    }

    return null;
  }

  String? evaluateNo3b(List<int?> answer) {
    if (answer.length != clinics[3].edges.length) {
      return "Range Error";
    }

    if (answer.contains(null)) {
      return "Lengkapi jawaban terlebih dahulu!";
    }

    bool c1t1 = answer[0] == 0 && answer[1] == 0;
    bool c1t2 = answer[0] == 1 && answer[1] == 1;
    bool c1t3 = answer[0] == 2 && answer[1] == 2;
    bool c1t4 = answer[0] == 3 && answer[1] == 3;
    bool c1t5 = answer[0] == 4 && answer[1] == 4;
    if (!(c1t1 || c1t2 || c1t3 || c1t4 || c1t5)) {
      return "1 dan 2 tidak valid!";
    }

    bool c2t1 = answer[2] == 0 && answer[3] == 0;
    bool c2t2 = answer[2] == 1 && answer[3] == 1;
    bool c2t3 = answer[2] == 2 && answer[3] == 2;
    bool c2t4 = answer[2] == 3 && answer[3] == 3;
    bool c2t5 = answer[2] == 4 && answer[3] == 4;
    bool c2t6 = answer[2] == 5 && answer[3] == 5;
    if (!(c2t1 || c2t2 || c2t3 || c2t4 || c2t5 || c2t6)) {
      return "3 dan 4 tidak valid";
    }

    bool c3t1 = answer[4] == 0 && answer[5] == 0;
    bool c3t2 = answer[4] == 1 && answer[5] == 1;
    bool c3t3 = answer[4] == 2 && answer[5] == 2;
    bool c3t4 = answer[4] == 3 && answer[5] == 3;
    bool c3t5 = answer[4] == 4 && answer[5] == 4;
    if (!(c3t1 || c3t2 || c3t3 || c3t4 || c3t5)) {
      return "5 dan 6 tidak valid";
    }

    if (c2t5 || c3t1) {
      return "Anda tidak bisa menggunakan kesimpulan untuk membuktikan kesimpulan Anda";
    }

    bool c1d = c1t4 || c1t5;
    bool c2d = c2t3 || c2t4;
    bool c3d = c3t3 || c3t5;

    bool d1 = (c1t1 && c2t6) || (c1t1 && c3t2) || (c2t6 && c3t2);
    bool d2 = c1t2 && c2t1;
    bool d3 = c1t3 && c2t2;
    bool d4 = (c1d && c2d) || (c1d && c3d) || (c2d && c3d);
    bool d5 = c2t5 && c3t1;
    if (d1 || d2 || d3 || d4 || d5) {
      return "Terdapat pernyataan awal yang duplikat!";
    }

    bool sss = (c1t1 || c1t2) && (c1t1 || c2t5 || c2t6) && (c3t1 || c3t2);
    bool ssds = (c1t1 || c1t2) && (c2t2 || c2t3 || c2t4) && (c3t1 || c3t2);
    bool sdssd = (c1t3 || c1t4 || c1t5) &&
        (c2t2 || c2t3 || c2t4) &&
        (c3t3 || c3t4 || c3t5);

    if ((sss && answer[6] != 0) ||
        (ssds && answer[6] != 1) ||
        (sdssd && answer[6] != 2)) {
      return "Teorema yang dipakai sebagai alasan salah";
    }

    if (answer[9] != 0) {
      return "Teorema yang dipakai sebagai alasan salah";
    }

    return null;
  }

  String? evaluateNo4(List<int?> answer) {
    if (answer.length != clinics[4].edges.length) {
      return "Range Error";
    }

    if (answer.contains(null)) {
      return "Lengkapi jawaban terlebih dahulu!";
    }

    bool c1t1 = answer[0] == 0 && answer[1] == 0;
    bool c1t2 = answer[0] == 1 && answer[1] == 1;
    if (!(c1t1 || c1t2)) {
      return "1 dan 2 tidak valid!";
    }

    if (c1t2) {
      return "Anda tidak bisa menggunakan pernyataan yang tidak diberikan sebagai premis";
    }

    bool a1 = answer[9] == 1;
    bool a2 = answer[12] == 0;
    if (!a1 || !a2) {
      return "Teorema yang dipakai sebagai alasan salah";
    }

    return null;
  }
}
