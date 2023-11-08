class ClinicModel {
  final String number;
  final String question;
  final String image;
  final String flow;
  final List<Edge> edges;

  const ClinicModel({
    required this.number,
    required this.question,
    required this.image,
    required this.flow,
    required this.edges,
  });
}

class Edge {
  final List<String> choices;

  const Edge({
    required this.choices,
  });

  factory Edge.newTeorema1() => const Edge(
        choices: [
          r"Jika tiga pasang sisi dari dua segitiga kongruen, maka kedua segitiga tersebut kongruen (S-S-S)",
          r"Jika dua pasang sisi dari dua segitiga kongruen dan sepasang sudut yang diapit kongruen, maka dua segitiga tersebut kongruen (S-Sd-S)",
          r"jika dua buah sudut yang berdekatan dan sisi yang menghubungkan kedua sudut tersebut kongruen, maka dua segitiga tersebut kongruen (Sd-S-Sd)",
          r"jika dua pasang sudut yang berdekatan dari dua segitiga kongruen dan satu sisi setelahnya juga kongruen, maka dua segitiga tersebut kongruen  (Sd-Sd-S)",
          r"jika dua segitiga memiliki sisi miring yang kongruen dan satu kaki yang sama Panjang",
          r"Jika sisi miring dan kaki salah satu segitiga siku-siku kongruen dengan sisi miring dan kaki segitiga siku-siku kedua, maka kedua segitiga tersebut kongruen (H-L)",
        ],
      );

  factory Edge.newTeorema2() => const Edge(
        choices: [
          r"Jika dua segitiga kongruen, maka sisi-sisi yang berkesesuaian kongruen",
          r"Jika dua sisi suatu segitiga kongruen, maka sudut-sudut yang berhadapan dengan sisi-sisi tersebut juga kongruen.",
          r"Jika dua sudut suatu segitiga kongruen, maka sisi-sisi yang berhadapan dengan sudut-sudut tersebut juga kongruen.",
        ],
      );
}
