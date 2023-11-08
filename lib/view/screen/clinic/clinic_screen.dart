import 'package:flutter/material.dart';
import 'package:rcgp_checker/model/clinic_model.dart';
import 'package:rcgp_checker/view/controller/clinic_controller.dart';
import 'package:rcgp_checker/view/controller/clinics.dart';
import 'package:rcgp_checker/view/widget/quiz_bar.dart';
import 'package:tex_text/tex_text.dart';

class ClinicTestScreen extends StatefulWidget {
  final int nomor;
  const ClinicTestScreen({
    super.key,
    required this.nomor,
  });

  @override
  State<ClinicTestScreen> createState() => _ClinicTestScreenState();
}

class _ClinicTestScreenState extends State<ClinicTestScreen> {
  late ClinicModel clinic;
  late List<int?> dropdownValues;

  @override
  void initState() {
    clinic = clinics[widget.nomor];

    final int sumValues = clinics[widget.nomor].edges.length;
    dropdownValues = List.generate(sumValues, (index) => null);
    super.initState();
  }

  void evaluateAnswer() {
    String? errorMessage;
    switch (widget.nomor) {
      case 0:
        errorMessage = ClinicController().evaluateNo1(dropdownValues);
        break;
      case 1:
        errorMessage = ClinicController().evaluateNo2(dropdownValues);
        break;
      case 2:
        errorMessage = ClinicController().evaluateNo3(dropdownValues);
        break;
      case 3:
        errorMessage = ClinicController().evaluateNo3b(dropdownValues);
        break;
      case 4:
        errorMessage = ClinicController().evaluateNo4(dropdownValues);
        break;
      default:
    }

    if (errorMessage != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
          margin: const EdgeInsets.all(20),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
        ),
      );
    } else {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            width: MediaQuery.sizeOf(context).width,
            padding: const EdgeInsets.all(20),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Selamat',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Jawaban Anda benar',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: const Text('Yakin ingin menyelesaikan?'),
                content: const Text('Pastikan sudah memeriksa pekerjaan Anda!'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Tidak'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      evaluateAnswer();
                    },
                    child: const Text('Ya'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(
          Icons.flag,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              QuizBar(
                showPermasalahan: false,
                number: clinic.number,
                onLeadingClick: () {},
              ),
              const SizedBox(height: 12),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(child: TexText(clinic.question)),
                              Image.asset(
                                clinic.image,
                                width: MediaQuery.sizeOf(context).width * .3,
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Image.asset(
                            clinic.flow,
                            width: 480,
                          ),
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    for (int i = 0;
                                        i < clinic.edges.length;
                                        i++)
                                      if (i.isEven)
                                        Row(
                                          children: [
                                            Text('${(i + 1)}: '),
                                            SizedBox(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  .4,
                                              child: DropdownButton<int>(
                                                isExpanded: true,
                                                itemHeight:
                                                    kMinInteractiveDimension +
                                                        16,
                                                onChanged: (value) {
                                                  setState(() {
                                                    dropdownValues[i] = value;
                                                  });
                                                },
                                                value: dropdownValues[i],
                                                items: <DropdownMenuItem<int>>[
                                                  for (int j = 0;
                                                      j <
                                                          clinic.edges[i]
                                                              .choices.length;
                                                      j++)
                                                    DropdownMenuItem(
                                                      value: j,
                                                      child: TexText(clinic
                                                          .edges[i].choices[j]),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    for (int i = 0;
                                        i < clinic.edges.length;
                                        i++)
                                      if (i.isOdd)
                                        Row(
                                          children: [
                                            Text('${(i + 1)}: '),
                                            SizedBox(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  .4,
                                              child: DropdownButton<int>(
                                                isExpanded: true,
                                                itemHeight:
                                                    kMinInteractiveDimension +
                                                        16,
                                                onChanged: (value) {
                                                  setState(() {
                                                    dropdownValues[i] = value;
                                                  });
                                                },
                                                value: dropdownValues[i],
                                                items: <DropdownMenuItem<int>>[
                                                  for (int j = 0;
                                                      j <
                                                          clinic.edges[i]
                                                              .choices.length;
                                                      j++)
                                                    DropdownMenuItem(
                                                      value: j,
                                                      child: TexText(clinic
                                                          .edges[i].choices[j]),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
