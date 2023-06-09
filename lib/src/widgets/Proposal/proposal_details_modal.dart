import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:tubes_promvis_kelompok_8/src/logger.dart';

class ProposalDetailDialog extends HookWidget {
  final int proposalId;
  final String proposalTitle;
  final String proposalContent;
  final int proposalAmount;
  final DateTime proposalDate;
  final bool isInvestor;
  final void Function()? investCallback;

  const ProposalDetailDialog(
      {super.key,
      required this.proposalId,
      required this.proposalTitle,
      required this.proposalContent,
      required this.proposalAmount,
      required this.proposalDate,
      this.isInvestor = false,
      this.investCallback});

  @override
  Widget build(BuildContext context) {
    late Widget content;

    try {
      quill.QuillController quillController = quill.QuillController(
        document: quill.Document.fromJson(jsonDecode(proposalContent)),
        selection: const TextSelection.collapsed(offset: 0),
      );
      content = quill.QuillEditor(
        controller: quillController,
        scrollController: ScrollController(),
        scrollable: true,
        focusNode: FocusNode(),
        autoFocus: true,
        readOnly: true,
        expands: false,
        padding: EdgeInsets.zero,
        keyboardAppearance: Brightness.light,
        showCursor: false,
      );
    } catch (e) {
      Logger.talker.info("quill failed, fallback plaintext");
      content = Text(proposalContent);
    }

    content = SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.5,
      child: content,
    );

    return AlertDialog(
      title: const Text('Proposal Details'),
      scrollable: true,
      content: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Text('Title: $proposalTitle'),
            Text('Amount: Rp.${proposalAmount.toString()}'),
            const Text('Content:'),
            content
          ]
              .map((e) => Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: e,
                    ),
                  ))
              .toList(),
        ),
      ),
      actions: <Widget>[
        if (isInvestor)
          TextButton(
            child: const Text('Invest'),
            onPressed: () {
              Navigator.of(context).pop();
              final investCallback = this.investCallback;
              if (investCallback != null) investCallback();
            },
          ),
        TextButton(
          child: const Text('Done'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
