// import 'dart:convert';

// import 'package:flutter/material.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_quill/flutter_quill.dart';

// import '../cubit/editor_cubit.dart';
// import '../utils/app_copy.dart';
// import '../widgets/editor_viewer_body.dart';
// import '../widgets/editor_writer_body.dart';

// class BiblingoColorAttr extends Attribute<String?> {
//   const BiblingoColorAttr(String? value)
//       : super('color', AttributeScope.inline, value);
// }

// class EditorWriterBody extends StatefulWidget {
//   const EditorWriterBody({super.key});

//   @override
//   State<EditorWriterBody> createState() => _EditorWriterBodyState();
// }

// class _EditorWriterBodyState extends State<EditorWriterBody> with AppCopy {
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
//     return Column(
//       children: [
//         QuillSimpleToolbar(
//           controller: _controller,
//           config: const QuillSimpleToolbarConfig(),
//         ),
//         Expanded(
//           child: QuillEditor(
//             controller: _controller,
//             focusNode: _editorFocusNode,
//             scrollController: _editorScrollController,
//             config: const QuillEditorConfig(),
//           ),
//         ),
//       ],
//     );
//   }
// }
