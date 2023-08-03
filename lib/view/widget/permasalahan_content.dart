import 'package:flutter/material.dart';
import 'package:tex_text/tex_text.dart';

class PermasalahanContent extends StatelessWidget {
  const PermasalahanContent({
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
              Image.asset(
                'assets/img/permasalahan.png',
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
