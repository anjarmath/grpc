import 'package:flutter/material.dart';
import 'package:rcgp_checker/view/controller/questions.dart';

import '../../model/skill_model.dart';

class AnswerController {
  List<bool>? checkAnswer(List<List<int?>> answers) {
    if (answers.length != questions.length) {
      debugPrint('Panjang tidak sesuai');
      return null;
    }
    List<bool> checkedAnswer = [];
    for (var i = 0; i < answers.length; i++) {
      List userAnswer = answers[i];
      List actualAnswer = questions[i].correctAnswer;
      checkedAnswer.add(userAnswer.toSet().containsAll(actualAnswer.toSet()));
    }
    // final level = _checkLevel(checkedAnswer);
    // debugPrint('Level: $level');
    return checkedAnswer;
  }

  List<SkillModel> getSkillStatus(List<bool> result) {
    List<SkillModel> skillStatus = [
      SkillModel(
        skill: SkillRCGP.skill11,
        status: result[0],
      ),
      SkillModel(
        skill: SkillRCGP.skill12,
        status: result[1],
      ),
      SkillModel(
        skill: SkillRCGP.skill13,
        status: result[2],
      ),
      SkillModel(
        skill: SkillRCGP.skill21,
        status: result[3],
      ),
      SkillModel(
        skill: SkillRCGP.skill31,
        status: result[4] && result[5],
      ),
      SkillModel(
        skill: SkillRCGP.skill41,
        status: result[6],
      ),
      SkillModel(
        skill: SkillRCGP.skill51,
        status: result[7] && result[8],
      ),
      SkillModel(
        skill: SkillRCGP.skill52,
        status: result[10] && result[11],
      ),
      SkillModel(
        skill: SkillRCGP.skill61,
        status: result[12] && result[13],
      ),
      SkillModel(
        skill: SkillRCGP.skill71,
        status: result[9] && result[14] && result[15],
      ),
      SkillModel(
        skill: SkillRCGP.skill81,
        status: result[16] && result[17],
      ),
      SkillModel(
        skill: SkillRCGP.skill82,
        status: result[18],
      ),
    ];

    return skillStatus;
  }

  String checkLevel(List<bool> result) {
    final component1 = result.sublist(0, 3);
    final component2 = result.sublist(3, 12);
    final component3 = result.sublist(12, result.length);
    component2.removeAt(6);
    component3.add(result[9]);
    debugPrint(
        '${component1.length} - ${component2.length} - ${component3.length}');
    if (_isAllFalse(component1) ||
        (!_isAllFalse(component1) && !_isAllTrue(component1))) {
      return SkillLevel.surface;
    }

    if (_isAllFalse(component2)) {
      return SkillLevel.toRecognizingElement;
    } else if (!_isAllFalse(component2) && !_isAllTrue(component2)) {
      return SkillLevel.recognizingElement;
    }

    if (_isAllFalse(component3)) {
      return SkillLevel.toChainingElement;
    } else if (!_isAllFalse(component3) && !_isAllTrue(component3)) {
      return SkillLevel.chainingELement;
    }
    return SkillLevel.toEncaptulation;
  }

  bool _isAllTrue(List<bool> list) {
    return list.every((element) => element == true);
  }

  bool _isAllFalse(List<bool> list) {
    return list.every((element) => element == false);
  }
}

class SkillLevel {
  static String surface = 'Surface';
  static String toRecognizingElement = 'Menuju ke Recognizing Element';
  static String recognizingElement = 'Recognizing Element';
  static String toChainingElement = 'Menuju ke Chaining Element';
  static String chainingELement = 'Chaining Element';
  static String toEncaptulation = 'Menuju ke Encaptulation';
}

class SkillRCGP {
  static String skill11 = 'Mengenali makna dari symbol pada gambar';
  static String skill12 = 'Menjelaskan makna dari sifat geometris';
  static String skill13 = 'Mengenali makna dari suatu sifat geometris';

  static String skill21 =
      'Mengenali kondisi yang bisa langsung diterapkan dalam pembuktian';

  static String skill31 = 'Menilai urutan logis dari suatu pernyataan';

  static String skill41 =
      'Mengenali sifat-sifat geometris apa saja yang diterapkan';

  static String skill51 =
      'Mengidentifikasi prosedur penting, premis dan konklusi';
  static String skill52 = 'Mengidentifikasi ide kritis dari suatu pembuktian';

  static String skill61 = 'Menilai kebenaran';

  static String skill71 = 'Mengidentifikasi apa yang divalidasi oleh bukti';

  static String skill81 = 'Aplikasi pada premis yang sama';
  static String skill82 = 'Mengidentifikasi perbedaan premis';

  static List<String> catalog() {
    return [
      'Mengenali makna dari symbol pada gambar',
      'Menjelaskan makna dari sifat geometris',
      'Mengenali makna dari suatu sifat geometris',
      'Mengenali kondisi yang bisa langsung diterapkan dalam pembuktian',
      'Menilai urutan logis dari suatu pernyataan',
      'Mengenali sifat-sifat geometris apa saya yang diterapkan',
      'Mengidentifikasi prosedur penting, premis dan konklusi',
      'Mengidentifikasi ide kritis dari suatu pembuktian',
      'Menilai kebenaran',
      'Mengidentifikasi apa yang divalidasi oleh bukti',
      'Aplikasi pada premis yang sama',
      'Mengidentifikasi perbedaan premis',
    ];
  }
}
