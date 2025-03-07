// import 'dart:convert';

// import 'package:flutter/material.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_quill/flutter_quill.dart';

// import '../cubit/editor_cubit.dart';

// class EditorViewerBody extends StatefulWidget {
//   const EditorViewerBody({super.key});

//   @override
//   State<EditorViewerBody> createState() => _EditorViewerBodyState();
// }

// class _EditorViewerBodyState extends State<EditorViewerBody> {
//   final QuillController _controller = QuillController.basic();
//   final FocusNode _editorFocusNode = FocusNode();
//   final ScrollController _editorScrollController = ScrollController();

//   @override
//   void dispose() {
//     _controller.dispose();
//     _editorScrollController.dispose();
//     _editorFocusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     try {
//       final String guideContent = context.read<EditorCubit>().state.text ?? '';
//       final json = jsonDecode(guideContent);

//       _controller.document = Document.fromJson(json);
//     } catch (_) {}

//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: QuillEditor(
//         focusNode: _editorFocusNode,
//         scrollController: _editorScrollController,
//         controller: _controller,
//         // configurations: const QuillEditorConfigurations(
//         //   placeholder: 'no notes...',
//         // ),
//       ),
//     );
//     // return SingleChildScrollView(
//     //   child: Column(
//     //     children: [
//     //       ...listExpansionTile,
//     //     ],
//     //   ),
//     // );
//   }
// }
