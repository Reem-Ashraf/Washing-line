import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import '../../../utality/image_path.dart';
import 'bills_page.dart';
import 'componant/bills_componant.dart';


final pdf=pw.Document();
createPdf(context)async{
  File qrCodeAsFile = await getImageFileFromAssets(AppImages.qrCode);
  //File billsAsFile = await getImageFileFromAssets(AppImages.billsImage);
  final qrCodeImage = pw.MemoryImage(qrCodeAsFile.readAsBytesSync());
  File billsAsFile=await getImageFileFromAssets(AppImages.billsImage);
  final billsImage = pw.MemoryImage(qrCodeAsFile.readAsBytesSync());

  pdf.addPage(
      pw.MultiPage(
    //pageFormat: PdfPageFormat.a4,
    margin:const pw.EdgeInsets.all(10),
    build: (pw.Context context){
      return <pw.Widget>[
        pw.Column(
            children: [
              pw.Image(billsImage),
              pw.Text("Washing Line Laundries",style: pw.TextStyle(fontSize: 14.sp,fontWeight: pw.FontWeight.bold),),
              pw.Text("Simplified tax bill",style: pw.TextStyle(fontSize: 13.sp,fontWeight: pw.FontWeight.bold),),
              pw.Text("36587895475",style: pw.TextStyle(fontSize: 12.sp,fontWeight: pw.FontWeight.bold),),
              pw.SizedBox(height: 2.h,),
              Devider(),
              pw.SizedBox(height: 1.h,),
              pw.Row(
                children: [
                  pw.Spacer(),
                  BillsColumn(txt1: "Delegate", txt2: "Mohamed"),
                  pw.Spacer(),
                  BillsColumn(txt1: "Area", txt2: "Gaddah"),
                  pw.Spacer(),
                  BillsColumn(txt1: "Time", txt2: "10:15"),
                  pw.Spacer(),
                  BillsColumn(txt1: "Date", txt2: "1/5/2023"),
                  pw.Spacer(),
                ],

              ),
              pw.SizedBox(height: 1.h,),
              Devider(),
              pw.SizedBox(height: 1.h,),
              BillsRow(txt1: "Reference", txt2: "1234567895845"),
              BillsRow(txt1: "Device Number", txt2: "12345"),
              BillsRow(txt1: "invoices Number", txt2: "855"),
              BillsRow(txt1: "Tax Number", txt2: "1234567895845"),
              BillsRow(txt1: "Branch", txt2: "Dmam"),
              BillsRow(txt1: "Pay Method", txt2: "Upon Receipt"),
              pw.SizedBox(height: 1.h,),
              Devider(),
              pw.SizedBox(height: 1.h,),
              BillsRow(txt1: "Client", txt2: "Yousef"),
              BillsRow(txt1: "Client Phone", txt2: "123456"),
              BillsRow(txt1: "Client Code", txt2: "sy8lpi6"),
              pw.SizedBox(height: 1.h,),
              Devider(),
              pw.SizedBox(height: 1.h,),
              pw.Row(
                children: [
                  pw.Spacer(),
                  BillsColumn(txt1: "Product Name", txt2: "Skirt"),
                  pw.Spacer(),
                  BillsColumn(txt1: "amount", txt2: "3"),
                  pw.Spacer(),
                  BillsColumn(txt1: "Price", txt2: "10"),
                  pw.Spacer(),
                  BillsColumn(txt1: "Total", txt2: "23"),
                  pw.Spacer(),
                ],

              ),
              pw.SizedBox(height: 1.h,),
              Devider(),
              pw.SizedBox(height: 1.h,),
              BillsRow(txt1: "Total amount without \nValue added tax", txt2: "40 R.S"),
              BillsRow(txt1: "The total amount \nafter discount", txt2: "35 R.s"),
              BillsRow(txt1: "Total value added \ntax (15%)", txt2: "15 R.s"),
              BillsRow(txt1: "Total bill amount", txt2: "55 R.s"),
              pw.SizedBox(height: 1.h,),
              Devider(),
              pw.SizedBox(height: 1.h,),
              pw. Row(children: [
                pw.Text("Note :",style: pw.TextStyle(fontSize: 12.sp,fontWeight: pw.FontWeight.bold),),
                pw.Text(" There are pieces in the skirt",style: pw.TextStyle(fontSize: 12.sp,fontWeight: pw.FontWeight.bold),),
                pw.SizedBox(height: 1.5.h,),
              ]),
              pw.SizedBox(height: 1.h,),
              Devider(),
              pw.SizedBox(height: 2.h,),
              //pw.Center(child: pw.Image(qrCodeImage,height: 15.h,width: 20.w), )
            ]
        )

      ];
    }
  ));

  Directory documentDirectory=await getApplicationDocumentsDirectory();
  String documentPath=documentDirectory.path;
  File file=File("$documentPath/wishing.pdf");
  file.writeAsBytesSync(await pdf.save());
  final channel = MethodChannel('channel:file_utils');
  channel.invokeMethod('showToast', 'PDF saved to $documentPath');



  Navigator.push(context, MaterialPageRoute(builder: (context)=>BillsPage(path: file.path)));

}

Future download()async{
  Directory? externalDirectory = await getExternalStorageDirectory();
  String externalPath = externalDirectory!.path;
  File download=File("$externalPath /wishing.pdf");
  download.writeAsBytesSync(await pdf.save());
  print(externalPath);

}
Future savePdf()async{
  Directory documentDirectory=await getApplicationDocumentsDirectory();
  String documentPath=documentDirectory.path;
  File file=File("$documentPath/wishing.pdf");
  file.writeAsBytesSync(await pdf.save());

}

Future<File> getImageFileFromAssets(String path) async {
  final byteData = await rootBundle.load(path);
  final buffer = byteData.buffer;
  Directory tempDir = await getTemporaryDirectory();
  String tempPath = tempDir.path;
  var filePath = '$tempPath/${path.hashCode}.tmp';
  // file_01.tmp is dump file, can be anything
  return File(filePath).writeAsBytes(
      buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
}

// class PDFScreen extends StatefulWidget {
//   final String? path;
//
//   const PDFScreen({Key? key, this.path}) : super(key: key);
//
//   @override
//   _PDFScreenState createState() => _PDFScreenState();
// }
//
// class _PDFScreenState extends State<PDFScreen> with WidgetsBindingObserver {
//   final Completer<PDFViewController> _controller =
//   Completer<PDFViewController>();
//   int? pages = 0;
//   int? currentPage = 0;
//   bool isReady = false;
//   String errorMessage = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Document"),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.share),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Stack(
//         children: <Widget>[
//           PDFView(
//             filePath: widget.path,
//             onRender: (_pages) {
//               setState(() {
//                 pages = _pages;
//                 isReady = true;
//               });
//             },
//             onError: (error) {
//               setState(() {
//                 errorMessage = error.toString();
//               });
//               print(error.toString());
//             },
//             onPageError: (page, error) {
//               setState(() {
//                 errorMessage = '$page: ${error.toString()}';
//               });
//               print('$page: ${error.toString()}');
//             },
//             onViewCreated: (PDFViewController pdfViewController) {
//               _controller.complete(pdfViewController);
//             },
//           ),
//           errorMessage.isEmpty
//               ? !isReady
//               ? const Center(
//             child: CircularProgressIndicator(),
//           )
//               : Container()
//               : Center(
//             child: Text(errorMessage),
//           )
//         ],
//       ),
//     );
//   }
// }
