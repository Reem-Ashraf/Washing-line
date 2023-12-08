import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:wishingline/view/screens/bills_page/pdf_creator.dart';

class Pdf extends StatefulWidget {
  const Pdf({Key? key}) : super(key: key);

  @override
  State<Pdf> createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
  // void initState() {
  //   super.initState();
  //   fromAsset('documents/sample.pdf', 'sample.pdf').then((f) {
  //     setState(() {
  //       pathPDF = f.path;
  //     });
  //   });
  // }

  // Future<File> fromAsset(String asset, String filename) async {
  //   Completer<File> completer = Completer();
  //   try {
  //     var dir = await getApplicationDocumentsDirectory();
  //     File file = File("${dir.path}/$filename");
  //     var data = await rootBundle.load(asset);
  //     var bytes = data.buffer.asUint8List();
  //     await file.writeAsBytes(bytes, flush: true);
  //     completer.complete(file);
  //   } catch (e) {
  //     throw Exception('Error parsing asset file!');
  //   }
  //
  //   return completer.future;
  // }
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
        body: Builder(
          builder: (BuildContext context) {
            return Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        child: Text('Tap to Open Document',
                            style: themeData.textTheme.headlineMedium
                                ?.copyWith(fontSize: 21.0)),
                        onPressed: () async{
                           createPdf(context);


                        },
                      )
                    ]));
          },
        )
    );
  }
}
