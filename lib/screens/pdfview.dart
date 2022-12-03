import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewer extends StatelessWidget {
  PdfViewer({super.key});

  final PdfViewerController _pdfViewerController = PdfViewerController();
  // PDFDocument doc = await PDFDocument.fromURL('http://www.africau.edu/images/default/sample.pdf');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.arrow_drop_down_circle,
              color: Colors.white,
            ),
            onPressed: () {
              _pdfViewerController.jumpToPage(3);
              // print(_pdfViewerController.scrollOffset.dy);
              // print(_pdfViewerController.scrollOffset.dx);
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'https://s3-ap-southeast-1.amazonaws.com/gtusitecirculars/Syallbus/3150709.pdf',
        controller: _pdfViewerController,
      ),
    );
  }
}
