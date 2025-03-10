import 'package:flutter/material.dart';

import '../widgets/editor_viewer_body.dart';
import '../widgets/editor_writer_body.dart';
import '../widgets/gif_viewer.dart';

class EditorDefault extends StatelessWidget {
  const EditorDefault({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      // initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
                "Catalunha. Testing Flutter Quill, etc em Flutter 3.27.0")),
        body: const Column(
          children: [
            TabBar(
              tabs: [
                // Text('Editor'),
                Text('Viewer'),
                Text('Gif'),
              ],
            ),
            Flexible(
              child: TabBarView(
                children: [
                  // EditorWriterBody(),
                  EditorViewerBody(),
                  GifViewer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// http://biblingoprod.s3.amazonaws.com/assets/app/badges/Items/Sandals/BadgeSandals.gif
// https://biblingoprod.s3.amazonaws.com/xmlassets/audio/70.G.1.2.mp4
// https://biblingoprod.s3.amazonaws.com/assets/app/badges/Items/Sandals/_After.png
