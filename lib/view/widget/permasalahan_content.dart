import 'package:flutter/material.dart';
import 'package:rcgp_checker/view/controller/image_controller.dart';
import 'package:tex_text/tex_text.dart';

class PermasalahanContentV1 extends StatelessWidget {
  const PermasalahanContentV1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const TexText(
              r'Seperti yang terlihat pada gambar 1, L, adalah bisektor tegaklurus  $\bar{BC}$, memotong  $\bar{AB}$ di D, dan memotong  $\bar{BC}$ di M; dan  $\bar{DA}\cong\bar{DB}$; apakah $\angle\ DCA$ dan $\angle\ DAC$ pasti kongruen?'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onLongPress: () {
                  ImageController(context)
                      .showImageOverlay('assets/img/permasalahan.png');
                },
                child: Image.asset(
                  'assets/img/permasalahan.png',
                  colorBlendMode: BlendMode.colorBurn,
                  width: 200,
                ),
              ),
            ],
          ),
          const Text(
              'Terkait masalah ini, Iwan menuliskan bukti sebagai berikut:'),
          const Text('Seperti yang terlihat pada gambar 1,'),
          const ListTile(
            title: TexText(
                r'Karena L, bisektor tegak lurus  $\bar{BC}$, memotong  $\bar{BC}$ di M'),
            trailing: Text('Baris 1'),
          ),
          const ListTile(
            title: TexText(
                r'Maka $m\angle\ BMD=m\angle\ CMD=90$ dan  $\bar{BM}\cong\bar{CM}$'),
            trailing: Text('Baris 2'),
          ),
          const ListTile(
            title: TexText(
                r'Dan $\bar{DM}\cong \bar{DM}$ (aksioma sifat refleksif),'),
            trailing: Text('Baris 3'),
          ),
          const ListTile(
            title: TexText(
                r'$\therefore \Delta BMD \cong \Delta CMD$ (aksioma Sisi-Sudut-Sisi)'),
            trailing: Text('Baris 4'),
          ),
          const ListTile(
            title: TexText(
                r'$\therefore \bar{DB}\cong \bar{DC}$ (def. kekongruenan poligon, korespondensi sisi)'),
            trailing: Text('Baris 5'),
          ),
          const ListTile(
            title: TexText(r'Dan $\bar{DA}\cong \bar{DB}$,'),
            trailing: Text('Baris 6'),
          ),
          const ListTile(
            title: TexText(
                r'Dari baris 5 dan baris 6 $\rightarrow$  $\bar{DA}\cong \bar{DC}$.'),
            trailing: Text('Baris 7'),
          ),
          const ListTile(
            title: TexText(
                r'karena $\bar{DA}\cong \bar{DC}$,$\angle\ DCA \cong \angle\ DAC$.'),
            trailing: Text('Baris 8'),
          ),
          const SizedBox(height: 5),
          const Text(
              'Jawablah pertanyaan berikut berdasarkan pada pertanyaan pada masalah 1 dan bukti yang ditulis Iwan:')
        ],
      ),
    );
  }
}

class PermasalahanContentV2 extends StatelessWidget {
  const PermasalahanContentV2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Table(
        border: TableBorder.all(),
        children: <TableRow>[
          TableRow(
            children: [
              _paddingWrapper(
                child: const Text(
                  "Pernyataan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              _paddingWrapper(
                child: const Text(
                  "Alasan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              _paddingWrapper(
                child: const TexText(
                    r'L, adalah bisektor tegaklurus $\bar{BC}$, memotong  $\bar{AB}$ di D, dan memotong  $\bar{BC}$ di M'),
              ),
              _paddingWrapper(child: const Text("Diberikan")),
            ],
          ),
          TableRow(
            children: [
              _paddingWrapper(
                child: const TexText(
                    r'$m\angle\ BMD$$=m\angle\ CMD$$=90$ dan  $\bar{BM}\cong \bar{CM}$'),
              ),
              _paddingWrapper(
                  child: const Text(
                      "Definisi garis tegak lurus dan definisi bisektor ruas garis")),
            ],
          ),
          TableRow(
            children: [
              _paddingWrapper(
                child: const TexText(r'$\bar{DM}\cong \bar{DM}$'),
              ),
              _paddingWrapper(child: const Text("Aksioma sifat reflektif")),
            ],
          ),
          TableRow(
            children: [
              _paddingWrapper(
                child: const TexText(r'$\Delta BMD \cong \Delta CMD$'),
              ),
              _paddingWrapper(child: const Text("Aksioma Sisi-Sudut-Sisi")),
            ],
          ),
          TableRow(
            children: [
              _paddingWrapper(
                child: const TexText(r'$\bar{DB}\cong \bar{DC} $'),
              ),
              _paddingWrapper(
                  child: const Text("Definisi kekongruenan poligon")),
            ],
          ),
          TableRow(
            children: [
              _paddingWrapper(
                child: const TexText(r'$\bar{DA}\cong \bar{DB}$'),
              ),
              _paddingWrapper(child: const Text("Diberikan")),
            ],
          ),
          TableRow(
            children: [
              _paddingWrapper(
                child: const TexText(r'$\angle\ DCA \cong \angle\ DAC  $'),
              ),
              _paddingWrapper(
                  child: const Text(
                      "Teorema: jika dua sisi dari suatu segitiga kongruen, maka sudut-sudut di hadapannya juga kongruen.")),
            ],
          ),
        ],
      ),
    );
  }

  Widget _paddingWrapper({
    required Widget child,
  }) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: child,
    );
  }
}

class PermasalahanContentV3 extends StatelessWidget {
  const PermasalahanContentV3({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Image.asset(
              'assets/img/flowchart.png',
              width: 1000,
            )
          ],
        ),
      ),
    );
  }
}
