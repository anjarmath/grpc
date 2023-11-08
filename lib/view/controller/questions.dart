import 'package:rcgp_checker/model/question_model.dart';

List<QuestionModel> questions = <QuestionModel>[
  const QuestionModel(
    number: '1',
    correctAnswer: [1],
    question:
        r'Apakah Anda setuju bahwa  $\overline{BM}\cong\overline{CM}$? Berikan alasannya?',
    choices: <ChoicesModel>[
      ChoicesModel(
          choiceString:
              r'Iya, karena garis l tegaklurus ruas garis  $\overline{BC}$'),
      ChoicesModel(
          choiceString:
              r'Iya, karena garis l adalah bisektor ruas garis $\overline{BC}$'),
      ChoicesModel(
          choiceString:
              r'Iya, karena segitiga $\Delta DBC$ adalah segitiga sama kaki'),
      ChoicesModel(choiceString: r'Iya, karena $m\angle BMD=m\angle CMD=90$'),
      ChoicesModel(
          choiceString: r'	Iya, karena $\overline{DA}\cong\overline{DB}$'),
    ],
  ),
  const QuestionModel(
    number: '2',
    question:
        r'Jika $\angle BMD$ dan $\angle CMD$ pada gambar dilabeli dengan angka 1 angka 2, maka pelabelan yang benar pada gambar berikut adalah',
    correctAnswer: [0],
    choices: [
      ChoicesModel(choiceImage: 'assets/img/q2a.png'),
      ChoicesModel(choiceImage: 'assets/img/q2b.png'),
      ChoicesModel(choiceImage: 'assets/img/q2c.png'),
      ChoicesModel(choiceImage: 'assets/img/q2d.png'),
      ChoicesModel(choiceImage: 'assets/img/q2e.png'),
    ],
  ),
  const QuestionModel(
    number: '3',
    correctAnswer: [0],
    question:
        r'Jika $\Delta BMD$ dan $\Delta CMD$ kongruen, maka sisi berkesesuaiannya dari sisi  $\overline{DB}$?',
    choices: <ChoicesModel>[
      ChoicesModel(choiceString: r'Sisi $\overline{DC}$'),
      ChoicesModel(choiceString: r'Sisi $\overline{DA}$'),
      ChoicesModel(choiceString: r'Sisi $\overline{AC}$'),
      ChoicesModel(choiceString: r'Sisi $\overline{BM}$'),
      ChoicesModel(choiceString: r'Sisi $\overline{CM}$'),
    ],
  ),
  const QuestionModel(
    number: '4',
    correctAnswer: [3],
    question:
        r'Selain kondisi yang diberikan (L, adalah bisektor tegaklurus  $\overline{BC}$, memotong  $\overline{AB}$ di D, dan memotong  $\overline{BC}$ di M; dan  $\overline{DA}\cong\overline{DB}$), kondisi apalagi yang bisa digunakan tanpa perlu pernyataan pendukung/penjelasan?',
    choices: <ChoicesModel>[
      ChoicesModel(
          choiceString: r'Segitiga $\Delta DBC$ adalah segitiga sama kaki'),
      ChoicesModel(choiceString: r'$m\angle BMD=m\angle CMD=90$'),
      ChoicesModel(choiceString: r'$\angle DBM\cong\angle DCM$'),
      ChoicesModel(choiceString: r'$\overline{DM}\cong\overline{DM}$'),
      ChoicesModel(choiceString: r'$\angle BDM\cong\angle CDM$'),
    ],
  ),
  const QuestionModel(
    number: '5',
    correctAnswer: [1],
    question:
        r'Jika seseorang mengatakan bahwa alur bukti dengan urutan baris 1, 2, 4, 3, 5, 6, 7 dan 8 adalah benar, apakah Anda setuju dengan pendapat tersebut?',
    choices: <ChoicesModel>[
      ChoicesModel(choiceString: r'Setuju'),
      ChoicesModel(choiceString: r'Tidak Setuju'),
    ],
  ),
  const QuestionModel(
    number: '6',
    correctAnswer: [1],
    question:
        r'Jika seseorang mengatakan bahwa flow-chart bukti dengan urutan baris 6, 1, 2, 4, 3, 5, 7 dan 8 adalah benar, apakah Anda setuju dengan pendapat tersebut?',
    choices: <ChoicesModel>[
      ChoicesModel(choiceString: r'Setuju'),
      ChoicesModel(choiceString: r'Tidak Setuju'),
    ],
  ),
  const QuestionModel(
    number: '7',
    correctAnswer: [3],
    question:
        r'Sifat geometris (Aksioma, teorema, definisi) apa yang diterapkan dalam bukti ini?',
    choices: <ChoicesModel>[
      ChoicesModel(
          choiceString:
              r'Aksioma sifat refleksif, aksioma Sisi-Sudut-Sisi, def. kekongruenan poligon, korespondensi sisi'),
      ChoicesModel(
          choiceString:
              r'Definisi bisektor ruas garis, aksioma sifat refleksif, aksioma Sisi-Sudut-Sisi, def. kekongruenan poligon, korespondensi sisi'),
      ChoicesModel(
          choiceString:
              r'Definisi garis tegak lurus, definisi bisector ruas garis, aksioma kekongruenan dua segitiga (Sisi-Sudut-Sisi), definisi kekongruenan polygon, sifat-sifat segitiga sama kaki'),
      ChoicesModel(
          choiceString:
              r'Definisi garis tegak lurus, definisi bisector ruas garis, sifat reflektif, aksioma kekongruenan dua segitiga (Sisi-Sudut-Sisi), definisi kekongruenan polygon, sifat transitif, teorema kekongruenan dua sudut dari segitiga yang sisi-sisi dihadapannya kongruen'),
      ChoicesModel(
          choiceString:
              r'Definisi garis tegak lurus, definisi bisector ruas garis, sifat reflektif, aksioma kekongruenan dua segitiga (Sisi-Sudut-Sisi), definisi kekongruenan polygon, sifat transitif, teorema kekongruenan dua sudut dari segitiga yang sisi-sisi dihadapannya kongruen, sifat-sifat segitiga sama kaki'),
    ],
  ),
  const QuestionModel(
    number: '8.A',
    correctAnswer: [1],
    question:
        r'Berdasarkan pertanyaan pada masalah pembuktian dan bukti yang ditulis Iwan,',
    subquestion:
        r'a. Kondisi minimal apa saja yang diperlukan/diberikan (premis)?',
    choices: <ChoicesModel>[
      ChoicesModel(
          choiceString:
              r'L, adalah bisektor tegaklurus  $\overline{BC}$, memotong  $\overline{AB}$ di D, dan memotong  $\overline{BC}$ di M'),
      ChoicesModel(
          choiceString:
              r'L, adalah bisektor tegaklurus  $\overline{BC}$, memotong  $\overline{AB}$ di D, dan memotong  $\overline{BC}$ di M; dan  $\overline{DA}\cong\overline{DB}$'),
      ChoicesModel(
          choiceString:
              r'L, adalah bisektor tegaklurus  $\overline{BC}$, memotong  $\overline{AB}$ di D, dan memotong  $\overline{BC}$ di M; $m\angle BMD=m\angle CMD=90$ dan  $\overline{DA}\cong\overline{DB}$'),
      ChoicesModel(
          choiceString:
              r'L, adalah bisektor tegaklurus  $\overline{BC}$, memotong  $\overline{AB}$ di D, dan memotong  $\overline{BC}$ di M; $\overline{DM}\cong\overline{DM}$ dan $\overline{DA}\cong\overline{DB}$'),
    ],
  ),
  const QuestionModel(
    number: '8.B',
    correctAnswer: [2],
    question:
        r'Berdasarkan pertanyaan pada masalah pembuktian dan bukti yang ditulis Iwan,',
    subquestion: r'b.	Apa kesimpulan dari bukti ini (konklusi)?',
    choices: <ChoicesModel>[
      ChoicesModel(choiceString: r'$\Delta BMD \cong \Delta CMD$'),
      ChoicesModel(choiceString: r'$\overline{DA}\cong \overline{DC}$'),
      ChoicesModel(choiceString: r'$\angle DCA \cong \angle DAC$'),
      ChoicesModel(
          choiceString: r'Segitiga $\Delta DBC$ adalah segitiga samakaki'),
      ChoicesModel(
          choiceString: r'Segitiga $\Delta DCA$ adalah segitiga samakaki'),
    ],
  ),
  const QuestionModel(
    number: '9',
    correctAnswer: [0, 1, 2, 3],
    question:
        r'Pernyataan yang bisa divalidasi oleh bukti ini adalah (bisa pilih lebih dari satu)',
    choices: <ChoicesModel>[
      ChoicesModel(
          choiceString:
              r'Jika garis l, adalah bisektor tegaklurus  $\overline{BC}$, memotong  $\overline{AB}$ di D, dan memotong  $\overline{BC}$ di M; dan  $\overline{DA}\cong \overline{DB}$, maka $\angle DCA \cong \angle DAC$'),
      ChoicesModel(
          choiceString:
              r'Jika garis l, adalah bisektor tegaklurus  $\overline{BC}$, memotong  $\overline{AB}$ di D, dan memotong  $\overline{BC}$ di M; dan  $\overline{DA}\cong \overline{DB}$, maka $\Delta ACB$ segitiga siku-siku'),
      ChoicesModel(
          choiceString:
              r'Jika garis l, adalah bisektor tegaklurus  $\overline{BC}$, memotong  $\overline{AB}$ di D, dan memotong  $\overline{BC}$ di M; dan  $\overline{DA}\cong\overline{DB}$, maka $\Delta CBD$ dan $\Delta CBA$ kongruen'),
      ChoicesModel(
          choiceString:
              r'Jika garis l, adalah bisektor tegaklurus  $\overline{BC}$, memotong  $\overline{AB}$ di D, dan memotong  $\overline{BC}$ di M; dan  $\overline{DA}\cong \overline{DB}$, maka  $\overline{AC} \cong \overline{BC}$'),
    ],
  ),
  const QuestionModel(
    number: '10.A',
    correctAnswer: [2],
    question:
        r'Pada bukti yang ditulis Iwan ini, ada pernyataan penting yang disimpulkan dari kondisi bahwa L, adalah bisektor tegaklurus  $\overline{BC}$, memotong  $\overline{AB}$ di D, dan memotong  $\overline{BC}$ di M; dan  $\overline{DA}\cong \overline{DB}$ dan kondisi lainnya.',
    subquestion: r'a.	Apa pernyataan penting itu?',
    choices: <ChoicesModel>[
      ChoicesModel(choiceString: r'$\overline{DM}\cong \overline{DM}$'),
      ChoicesModel(choiceString: r'$m\angle BMD=m\angle CMD=90$'),
      ChoicesModel(choiceString: r'$\Delta BMD \cong \Delta CMD$'),
      ChoicesModel(choiceString: r'$\overline{DB}\cong \overline{DC}$'),
      ChoicesModel(choiceString: r'$\overline{DA}\cong \overline{DC}$'),
    ],
  ),
  const QuestionModel(
    number: '10.B',
    correctAnswer: [3],
    question:
        r'Pada bukti yang ditulis Iwan ini, ada pernyataan penting yang disimpulkan dari kondisi bahwa L, adalah bisektor tegaklurus  $\overline{BC}$, memotong  $\overline{AB}$ di D, dan memotong  $\overline{BC}$ di M; dan  $\overline{DA}\cong \overline{DB}$ dan kondisi lainnya.',
    subquestion:
        r'b. Ada satu pernyataan/kondisi yang diperoleh dari pernyataan penting tersebut untuk menyimpulkan bahwa $\angle\ DCA \cong \angle\ DAC$. Apa pernyataan/kondisi itu?',
    choices: <ChoicesModel>[
      ChoicesModel(choiceString: r'$\overline{DM}\cong \overline{DM}$'),
      ChoicesModel(choiceString: r'$m\angle\ BMD=m\angle\ CMD=90$'),
      ChoicesModel(choiceString: r'$\Delta BMD \cong \Delta CMD$'),
      ChoicesModel(choiceString: r'$\overline{DB}\cong \overline{DC}$'),
      ChoicesModel(choiceString: r'$\overline{DA}\cong \overline{DC}$'),
    ],
  ),
  const QuestionModel(
    number: '11',
    correctAnswer: [1],
    question: r'Pilihlah pernyataan yang benar berikut ini!',
    choices: <ChoicesModel>[
      ChoicesModel(
          choiceString:
              r'Jika garis L adalah bisektor tegaklurus  $\overline{BC}$, memotong  $\overline{AB}$ di D, dan memotong  $\overline{BC}$ di M maka $\Delta BMD \cong \Delta CMD$'),
      ChoicesModel(
          choiceString:
              r'Jika garis L, adalah bisektor $\overline{BC}$, memotong  $\overline{AB}$ di D maka $\overline{DB}\cong \overline{DC}$'),
      ChoicesModel(
          choiceString:
              r'Jika $\Delta BMD \cong \Delta CMD$ maka $\angle\ DCA \cong \angle\ DAC$'),
      ChoicesModel(
          choiceString:
              r'Jika $\Delta BMD \cong \Delta CMD$ maka $\overline{DA}\cong \overline{DC}$'),
    ],
  ),
  const QuestionModel(
    number: '12',
    correctAnswer: [0],
    question: r'Apakah Anda setuju bahwa proses bukti tersebut benar?',
    choices: <ChoicesModel>[
      ChoicesModel(choiceString: r'Setuju'),
      ChoicesModel(choiceString: r'Tidak Setuju'),
    ],
  ),
  const QuestionModel(
    number: '13.A',
    correctAnswer: [0],
    question:
        r'Pernyataan A: "Jika L, adalah bisektor tegaklurus  $\overline{BC}$, memotong  $\overline{AB}$ di D, dan memotong  $\overline{BC}$ di M; dan  $\overline{DA}\cong \overline{DB}$; maka $\angle\ DCA$ dan $\angle\ DAC$ kongruen.".',
    subquestion:
        r'a.	Apakah Anda setuju bahwa proses bukti tersebut bisa membuktikan pernyataan A selalu benar?',
    choices: <ChoicesModel>[
      ChoicesModel(choiceString: r'Setuju'),
      ChoicesModel(choiceString: r'Tidak Setuju'),
    ],
  ),
  const QuestionModel(
    number: '13.B',
    correctAnswer: [1],
    question:
        r'Pernyataan A: "Jika L, adalah bisektor tegaklurus  $\overline{BC}$, memotong  $\overline{AB}$ di D, dan memotong  $\overline{BC}$ di M; dan  $\overline{DA}\cong \overline{DB}$; maka $\angle\ DCA$ dan $\angle\ DAC$ kongruen.".',
    subquestion:
        r'b.	Apakah Anda setuju bahwa proses bukti tersebut bisa membuktikan pernyataan A kadang benar dan kadang salah?',
    choices: <ChoicesModel>[
      ChoicesModel(choiceString: r'Setuju'),
      ChoicesModel(choiceString: r'Tidak Setuju'),
    ],
  ),
  const QuestionModel(
    number: '14',
    correctAnswer: [0],
    title: 'Jawablah pertanyaan berikut berdasarkan pengetahuan Anda.',
    question:
        r'Sebuah lingkaran dengan pusat P, jari-jari $\overline{PS}$ dan  $\overline{PQ}$. Jika T adalah titik tengah  $\overline{PQ}$,  $\overline{ST}\bot \overline{PQ}$, dan S adalah titik tengah  $\overline{PR}$, apakah $\Delta RSQ$ segitiga samakaki?',
    choices: <ChoicesModel>[
      ChoicesModel(choiceString: r'Ya'),
      ChoicesModel(choiceString: r'Tidak'),
    ],
  ),
  const QuestionModel(
    number: '15',
    correctAnswer: [1, 2, 4],
    title: 'Jawablah pertanyaan berikut berdasarkan pengetahuan Anda.',
    question:
        r'Jika pada suatu segitiga $\Delta PQR$, titik S adalah titik tengah  $\overline{PQ}$, titik U adalah titik potong antara ruas garis  $\overline{TS}$ dan  $\overline{QR}$, dan  $\overline{ST}\bot \overline{PQ}$ serta $\overline{UQ}\cong \overline{UR}$, kesimpulan apa yang bisa dibuat? (bisa pilih lebih dari satu)',
    choices: <ChoicesModel>[
      ChoicesModel(choiceString: r'$\overline{PR}\cong \overline{PQ}$'),
      ChoicesModel(choiceString: r'$\Delta PUR$ segitiga samakaki'),
      ChoicesModel(choiceString: r'$\overline{RU}\cong \overline{PU}$'),
      ChoicesModel(choiceString: r'$\angle\ PUR \cong \angle\ PUQ$'),
      ChoicesModel(choiceString: r'$\angle\ UPR \cong \angle\ URP$'),
    ],
  ),
  const QuestionModel(
    number: '16',
    correctAnswer: [0],
    title: 'Jawablah pertanyaan berikut berdasarkan pengetahuan Anda.',
    question:
        r'Jika D adalah titik tengah  $\overline{AE}$, dan  $\overline{BD}$ dan  $\overline{AE}$ saling tegak lurus, dan  $\overline{AB}\cong\overline{BC}$, maka  apakah $m\angle\ AEC$ sama dengan 90?',
    choices: <ChoicesModel>[
      ChoicesModel(choiceString: 'Sama'),
      ChoicesModel(choiceString: 'Tidak Sama'),
    ],
  ),
];
