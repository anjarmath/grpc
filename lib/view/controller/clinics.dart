import 'package:rcgp_checker/model/clinic_model.dart';

List<ClinicModel> clinics = <ClinicModel>[
  ClinicModel(
    number: 'Problem 1: Beginner',
    question:
        r'Pada gambar di sebelah kanan, diketahui bahwa $AO \cong\ BO,\ \angle\ AOB \cong \angle\ BOD,\ OC \cong\ OD$. Berangkat dari yang diketahui tersebut, lengkapi flow-chart pembuktian berikut. Kondisi apalagi yang dibutuhkan untuk menyimpulkan? Aksioma kekongruenan segitiga apa yang akan Anda gunakan?',
    image: 'assets/img/clinic/no1.png',
    flow: 'assets/img/clinic/flow1.png',
    edges: <Edge>[
      Edge.newTeorema1(),
      const Edge(
        choices: [
          r"$\Delta AOC$",
        ],
      ),
      const Edge(
        choices: [
          r"$\Delta BOD$",
        ],
      ),
      Edge.newTeorema2(),
      const Edge(
        choices: [
          r"$\overline{CA}$",
          r"$\angle OCA$",
          r"$\overline{OA}$",
          r"$\overline{OC}$",
          r"$\angle CAO$",
          r"$\angle AOC$",
        ],
      ),
      const Edge(
        choices: [
          r"$\overline{DB}$",
          r"$\angle ODB$",
          r"$\overline{OB}$",
          r"$\overline{OD}$",
          r"$\angle DBO$",
          r"$\angle BOD$",
        ],
      ),
    ],
  ),
  ClinicModel(
    number: 'Problem 2: Beginner',
    question:
        r"Pada gambar di sebelah kanan, diketahui bahwa $\overline{OA} \cong \overline{OC}$. Berangkat dari yang diketahui tersebut, Anda akan membuktikan bahwa $\overline{AB} \cong \overline{CD}$ dengan menunjukkan bahwa dua segitiga pada gambar kongruen. Kondisi apalagi yang dibutuhkan untuk menyimpulkan? Aksioma kekongruenan segitiga apa yang akan Anda gunakan?",
    image: 'assets/img/clinic/no2.png',
    flow: 'assets/img/clinic/flow2.png',
    edges: <Edge>[
      const Edge(
        choices: [
          r"$\angle AOB$",
          r"$\overline{AB}$",
        ],
      ),
      const Edge(
        choices: [
          r"$\angle COD$",
          r"$\overline{CD}$",
        ],
      ),
      const Edge(
        choices: [
          r"$\overline{BO}$",
          r"$\overline{AB}$",
          r"$\angle OAB$",
        ],
      ),
      const Edge(
        choices: [
          r"$\overline{OD}$",
          r"$\overline{CD}$",
          r"$\angle OCD$",
        ],
      ),
      Edge.newTeorema1(),
      const Edge(
        choices: [
          r"$\angle AOB$",
        ],
      ),
      const Edge(
        choices: [
          r"$\angle COD$",
        ],
      ),
      Edge.newTeorema2(),
    ],
  ),
  ClinicModel(
    number: 'Problem 3: Beginner',
    question:
        r"Pada gambar di sebelah kanan, Anda bisa membuktikan bahwa $\angle ABO \cong \angle ACO$ dengan menunjukkan bahwa dua segitiga tersebut kongruen. Apa saja yang akan Anda tambahkan pada pembuktian berikut? Kondisi kekongruenan dan sifat kekongruenan bangun datar apa saja yang Anda gunakan? Lengkapi flow-chart berikut.",
    image: 'assets/img/clinic/no3.png',
    flow: 'assets/img/clinic/flow3.png',
    edges: <Edge>[
      const Edge(
        choices: [
          r"$\overline{AB}$",
          r"$\angle BAO$",
          r"$\angle ABO$",
          r"$\overline{BO}$",
        ],
      ),
      const Edge(
        choices: [
          r"$\overline{AC}$",
          r"$\angle CAO$",
          r"$\angle ACO$",
          r"$\overline{CO}$",
        ],
      ),
      const Edge(
        choices: [
          r"$\overline{AO}$",
          r"$\overline{BO}$",
          r"$\overline{AB}$",
          r"$\angle BAO$",
          r"$\angle ABO$",
          r"$\angle AOB$",
        ],
      ),
      const Edge(
        choices: [
          r"$\overline{AO}$",
          r"$\overline{CO}$",
          r"$\overline{AC}$",
          r"$\angle CAO$",
          r"$\angle ACO$",
          r"$\angle AOC$",
        ],
      ),
      const Edge(
        choices: [
          r"$\overline{BO}$",
          r"$\angle BOA$",
          r"$\angle AOB$",
          r"$\angle ABO$",
          r"$\overline{AO}$",
        ],
      ),
      const Edge(
        choices: [
          r"$\overline{CO}$",
          r"$\angle COA$",
          r"$\angle AOC$",
          r"$\angle ACO$",
          r"$\overline{AO}$",
        ],
      ),
      Edge.newTeorema1(),
      const Edge(
        choices: [
          r"$\Delta ABO$",
        ],
      ),
      const Edge(
        choices: [
          r"$\Delta ACO$",
        ],
      ),
      Edge.newTeorema2(),
    ],
  ),
  ClinicModel(
    number: 'Problem 3: Advanced',
    question:
        r"Pada gambar di sebelah kanan, kita ingin membuktikan bahwa $\overline{BE} \cong \overline{CD}$ dengan menggunakan konsep (definisi dan aksioma) kekongruenan. Pernyataan/premis apa yang dibutuhkan untuk membuktikan ini, dan kondisi dari kekongruenan segitiga seperti apa yang bias digunakan?",
    image: 'assets/img/clinic/no3b.png',
    flow: 'assets/img/clinic/flow3b.png',
    edges: <Edge>[
      const Edge(
        choices: [
          r"$\overline{AB}$",
          r"$\overline{EA}$",
          r"$\angle ABE$",
          r"$\angle EAB$",
          r"$\angle BEA$",
        ],
      ),
      const Edge(
        choices: [
          r"$\overline{AC}$",
          r"$\overline{AD}$",
          r"$\angle ACD$",
          r"$\angle ADC$",
          r"$\angle CDA$",
        ],
      ),
      const Edge(
        choices: [
          r"$\overline{EA}$",
          r"$\angle ABE$",
          r"$\angle BEA$",
          r"$\angle EAB$",
          r"$\overline{BE}$",
          r"$\overline{AB}$",
        ],
      ),
      const Edge(
        choices: [
          r"$\overline{AD}$",
          r"$\angle ACD$",
          r"$\angle CDA$",
          r"$\angle ADC$",
          r"$\overline{CD}$",
          r"$\overline{AC}$",
        ],
      ),
      const Edge(
        choices: [
          r"$\overline{BE}$",
          r"$\overline{AB}$",
          r"$\angle BEA$",
          r"$\angle ABE$",
          r"$\angle EAB$",
        ],
      ),
      const Edge(
        choices: [
          r"$\overline{CD}$",
          r"$\overline{AC}$",
          r"$\angle CDA$",
          r"$\angle ACD$",
          r"$\angle DAC$",
        ],
      ),
      Edge.newTeorema1(),
      const Edge(
        choices: [
          r"$\Delta ABE$",
        ],
      ),
      const Edge(
        choices: [
          r"$\Delta ACD$",
        ],
      ),
      Edge.newTeorema2(),
    ],
  ),
  ClinicModel(
    number: 'Problem 4: Proof Ccnstruction',
    question:
        r'Pada gambar di sebelah kanan, buktikan bahwa "jika $\overline{AB}$ dan $\overline{CD}$ berpotongan di titik $M$, $\overline{AM} \cong \overline{BM}$ dan $\overline{CM} \cong \overline{DM}$; maka, $\angle MAC$ dan $\angle MBD$ pasti kongruen" dengan melengkapi flow-chart berikut!',
    image: 'assets/img/clinic/no4.png',
    flow: 'assets/img/clinic/flow4.png',
    edges: <Edge>[
      const Edge(
        choices: [
          r"$\overline{AM}$",
          r"$\angle ACM$",
        ],
      ),
      const Edge(
        choices: [
          r"$\overline{BM}$",
          r"$\angle BDM$",
        ],
      ),
      const Edge(
        choices: [
          r"Diberikan",
        ],
      ),
      const Edge(
        choices: [
          r"$\overline{CM}$",
        ],
      ),
      const Edge(
        choices: [
          r"$\overline{DM}$",
        ],
      ),
      const Edge(
        choices: [
          r"Diberikan",
        ],
      ),
      const Edge(
        choices: [
          r"$\angle AMC$",
        ],
      ),
      const Edge(
        choices: [
          r"$\angle BMD$",
        ],
      ),
      const Edge(
        choices: [
          r"$\angle AMC$ dan $\angle BMD$ Adalah sudut bertolak belakang",
        ],
      ),
      Edge.newTeorema1(),
      const Edge(
        choices: [
          r"$\Delta AMC$",
        ],
      ),
      const Edge(
        choices: [
          r"$\Delta BMD$",
        ],
      ),
      Edge.newTeorema2(),
      const Edge(
        choices: [
          r"$\angle MAC$",
        ],
      ),
      const Edge(
        choices: [
          r"$\angle MBD$",
        ],
      ),
    ],
  ),
];
