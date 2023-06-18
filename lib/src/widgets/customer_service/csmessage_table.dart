import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

class CSMessageTable extends HookWidget {
  final List<dynamic>? listMessage;

  const CSMessageTable({Key? key, this.listMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat.yMd(); // Date format for displaying dates
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const ClampingScrollPhysics(),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            child: DataTable(
              columns: const [
                DataColumn(
                  label: SizedBox(
                    child: Text(
                      'Message',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                DataColumn(
                    label: Text('Date Created')), // Column for "Date Created"
                DataColumn(
                    label: Text('Date Updated')), // Column for "Date Updated"
              ],
              rows: listMessage?.map<DataRow>((message) {
                    return DataRow(
                      cells: [
                        DataCell(
                          SizedBox(
                            child: Text(message.cs_message_content ?? ''),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Text(
                              dateFormat.format(message.cs_message_date ??
                                  DateTime
                                      .now()), // Display the formatted "Date Created"
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Text(
                              dateFormat.format(message.updated_at ??
                                  DateTime
                                      .now()), // Display the formatted "Date Updated"
                            ),
                          ),
                        ),
                      ],
                    );
                  }).toList() ??
                  [],
            ),
          ),
        ),
      ),
    );
  }
}
