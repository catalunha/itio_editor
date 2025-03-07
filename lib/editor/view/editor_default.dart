import 'package:flutter/material.dart';

import '../widgets/editor_viewer_body.dart';
import '../widgets/editor_writer_body.dart';

class EditorDefault extends StatelessWidget {
  const EditorDefault({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      // initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(title: const Text('Grammar Editor')),
        body: Column(
          children: [
            const TabBar(
              tabs: [
                Text('Editor'),
                Text('Viewer'),
              ],
            ),
            Flexible(
              child: TabBarView(
                children: [
                  Container(),
                  Container(),
                  // EditorWriterBody(),
                  // EditorViewerBody(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
